; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_await_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_await_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"irqs are disabled on this system!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STU300_ERROR_NONE = common dso_local global i32 0, align 4
@STU300_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"wait_for_completion_interruptible_timeout()returned %d waiting for event %04x\0A\00", align 1
@STU300_EVENT_6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for event %d, reinit hardware\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"controller error (await_event) %d waiting for event %d, reinit hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i32)* @stu300_await_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_await_event(%struct.stu300_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @irqs_disabled()
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %12 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %20 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* @STU300_ERROR_NONE, align 4
  %23 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %24 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %27 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %29 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %28, i32 0, i32 3
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %32 = call i32 @stu300_irq_enable(%struct.stu300_dev* %31)
  %33 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %34 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %33, i32 0, i32 4
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %37 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %36, i32 0, i32 3
  %38 = load i32, i32* @STU300_TIMEOUT, align 4
  %39 = call i32 @wait_for_completion_interruptible_timeout(i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %44 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %18
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @STU300_EVENT_6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %60 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %66 = call i32 @stu300_init_hw(%struct.stu300_dev* %65)
  br label %67

67:                                               ; preds = %58, %54
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %96

70:                                               ; preds = %51
  %71 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %72 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @STU300_ERROR_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @STU300_EVENT_6, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %82 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %86 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %91 = call i32 @stu300_init_hw(%struct.stu300_dev* %90)
  br label %92

92:                                               ; preds = %80, %76
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92, %67, %42, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @stu300_irq_enable(%struct.stu300_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
