; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_repeat_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_repeat_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i64*, i32, i64, i32, i32, i32 }

@KEY_MAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4
@REP_PERIOD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @input_repeat_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_repeat_key(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.input_dev*
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @test_bit(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %1
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KEY_MAX, align 4
  %28 = call i64 @is_event_supported(i32 %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %20
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load i32, i32* @EV_KEY, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @input_pass_event(%struct.input_dev* %31, i32 %32, i32 %35, i32 2)
  %37 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %43 = load i32, i32* @EV_SYN, align 4
  %44 = load i32, i32* @SYN_REPORT, align 4
  %45 = call i32 @input_pass_event(%struct.input_dev* %42, i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @REP_PERIOD, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 2
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @REP_PERIOD, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @msecs_to_jiffies(i64 %63)
  %65 = add nsw i64 %57, %64
  %66 = call i32 @mod_timer(i32* %56, i64 %65)
  br label %67

67:                                               ; preds = %54, %46
  br label %68

68:                                               ; preds = %67, %20, %1
  %69 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @is_event_supported(i32, i32, i32) #1

declare dso_local i32 @input_pass_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
