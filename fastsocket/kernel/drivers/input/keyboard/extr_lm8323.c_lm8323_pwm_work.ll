; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_pwm_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_pwm_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.lm8323_pwm = type { i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @lm8323_pwm_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8323_pwm_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.lm8323_pwm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %13 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %14 = call %struct.lm8323_pwm* @work_to_pwm(%struct.work_struct* %13)
  store %struct.lm8323_pwm* %14, %struct.lm8323_pwm** %3, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %16 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %19 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %24 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %27 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %1
  br label %108

31:                                               ; preds = %22
  %32 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %33 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %38 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %41 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %46 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %49 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = call i32 @abs(i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %54 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %55, %56
  %58 = icmp sgt i32 %57, 64
  br i1 %58, label %59, label %60

59:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  store i32 64, i32* %7, align 4
  br label %61

60:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  store i32 2048, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %64 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 %67, 1000
  %69 = sdiv i32 %66, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %78

73:                                               ; preds = %61
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 63
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 63, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %72
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @min(i32 126, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @PWM_RAMP(i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %102 = call i32 @lm8323_write_pwm(%struct.lm8323_pwm* %98, i32 %99, i32 %100, i32* %101)
  %103 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %104 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %107 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %97, %30
  %109 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %3, align 8
  %110 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  ret void
}

declare dso_local %struct.lm8323_pwm* @work_to_pwm(%struct.work_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PWM_RAMP(i32, i32, i32, i32) #1

declare dso_local i32 @lm8323_write_pwm(%struct.lm8323_pwm*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
