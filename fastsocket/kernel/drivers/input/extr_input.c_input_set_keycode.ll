; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_set_keycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_set_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 (%struct.input_dev*, i32, i32*)*, {}*, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_set_keycode(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %96

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @KEY_MAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %96

26:                                               ; preds = %19
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  %33 = load i32 (%struct.input_dev*, i32, i32*)*, i32 (%struct.input_dev*, i32, i32*)** %32, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 %33(%struct.input_dev* %34, i32 %35, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %90

40:                                               ; preds = %26
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  %43 = bitcast {}** %42 to i32 (%struct.input_dev*, i32, i32)**
  %44 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %43, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %44(%struct.input_dev* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %90

52:                                               ; preds = %40
  %53 = load i32, i32* @EV_KEY, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KEY_MAX, align 4
  %65 = call i32 @is_event_supported(i32 %60, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @__test_and_clear_bit(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = load i32, i32* @EV_KEY, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @input_pass_event(%struct.input_dev* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = load i32, i32* @EV_SYN, align 4
  %86 = load i32, i32* @SYN_REPORT, align 4
  %87 = call i32 @input_pass_event(%struct.input_dev* %84, i32 %85, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %83, %74
  br label %89

89:                                               ; preds = %88, %67, %59, %52
  br label %90

90:                                               ; preds = %89, %51, %39
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %23, %13
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @is_event_supported(i32, i32, i32) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @input_pass_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
