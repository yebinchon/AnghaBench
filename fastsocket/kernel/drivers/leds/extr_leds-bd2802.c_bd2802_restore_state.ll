; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@LED_NUM = common dso_local global i32 0, align 4
@RED = common dso_local global i32 0, align 4
@GREEN = common dso_local global i32 0, align 4
@BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*)* @bd2802_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_restore_state(%struct.bd2802_led* %0) #0 {
  %2 = alloca %struct.bd2802_led*, align 8
  %3 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %78, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LED_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %81

8:                                                ; preds = %4
  %9 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %10 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %8
  %19 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @RED, align 4
  %22 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %23 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bd2802_turn_on(%struct.bd2802_led* %19, i32 %20, i32 %21, i64 %29)
  br label %31

31:                                               ; preds = %18, %8
  %32 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %33 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @GREEN, align 4
  %45 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %46 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bd2802_turn_on(%struct.bd2802_led* %42, i32 %43, i32 %44, i64 %52)
  br label %54

54:                                               ; preds = %41, %31
  %55 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %56 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @BLUE, align 4
  %68 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %69 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bd2802_turn_on(%struct.bd2802_led* %65, i32 %66, i32 %67, i64 %75)
  br label %77

77:                                               ; preds = %64, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %4

81:                                               ; preds = %4
  ret void
}

declare dso_local i32 @bd2802_turn_on(%struct.bd2802_led*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
