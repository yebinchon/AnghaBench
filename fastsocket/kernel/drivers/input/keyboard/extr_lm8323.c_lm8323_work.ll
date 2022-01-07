; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.lm8323_chip = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM8323_CMD_READ_INT = common dso_local global i32 0, align 4
@INT_KEYPAD = common dso_local global i32 0, align 4
@INT_ROTATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"rotator fired\0A\00", align 1
@INT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"error!\0A\00", align 1
@INT_NOINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"chip lost config; reinitialising\0A\00", align 1
@LM8323_NUM_PWMS = common dso_local global i32 0, align 4
@INT_PWM1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"pwm%d engine completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @lm8323_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8323_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.lm8323_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call %struct.lm8323_chip* @work_to_lm8323(%struct.work_struct* %6)
  store %struct.lm8323_chip* %7, %struct.lm8323_chip** %3, align 8
  %8 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %9 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %98, %1
  %12 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %13 = load i32, i32* @LM8323_CMD_READ_INT, align 4
  %14 = call i32 @lm8323_read(%struct.lm8323_chip* %12, i32 %13, i32* %4, i32 1)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  br i1 %20, label %21, label %99

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @INT_KEYPAD, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %29 = call i32 @process_keys(%struct.lm8323_chip* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @INT_ROTATOR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %37 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @INT_ERROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %48 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %53 = call i32 @lm8323_process_error(%struct.lm8323_chip* %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @INT_NOINIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %61 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %66 = call i32 @lm8323_configure(%struct.lm8323_chip* %65)
  br label %67

67:                                               ; preds = %59, %54
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @LM8323_NUM_PWMS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @INT_PWM1, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %74, %75
  %77 = shl i32 1, %76
  %78 = and i32 %73, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %82 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %88 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @pwm_done(i32* %92)
  br label %94

94:                                               ; preds = %80, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %68

98:                                               ; preds = %68
  br label %11

99:                                               ; preds = %19
  %100 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %101 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  ret void
}

declare dso_local %struct.lm8323_chip* @work_to_lm8323(%struct.work_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm8323_read(%struct.lm8323_chip*, i32, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @process_keys(%struct.lm8323_chip*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, ...) #1

declare dso_local i32 @lm8323_process_error(%struct.lm8323_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lm8323_configure(%struct.lm8323_chip*) #1

declare dso_local i32 @pwm_done(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
