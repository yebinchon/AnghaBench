; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_Timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_Timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { void (i64)*, i64 }

@jiffies = common dso_local global i64 0, align 8
@TLAN_TIMER_ACT_DELAY = common dso_local global i64 0, align 8
@TLAN_LED_REG = common dso_local global i32 0, align 4
@TLAN_LED_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @TLan_Timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_Timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.net_device*
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store void (i64)* null, void (i64)** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %86 [
    i32 131, label %17
    i32 130, label %20
    i32 129, label %23
    i32 128, label %26
    i32 132, label %29
    i32 134, label %32
    i32 135, label %35
  ]

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @TLan_PhyPowerDown(%struct.net_device* %18)
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @TLan_PhyPowerUp(%struct.net_device* %21)
  br label %87

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @TLan_PhyReset(%struct.net_device* %24)
  br label %87

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @TLan_PhyStartLink(%struct.net_device* %27)
  br label %87

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @TLan_PhyFinishAutoNeg(%struct.net_device* %30)
  br label %87

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @TLan_FinishReset(%struct.net_device* %33)
  br label %87

35:                                               ; preds = %1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load void (i64)*, void (i64)** %42, align 8
  %44 = icmp eq void (i64)* %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %35
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @TLAN_TIMER_ACT_DELAY, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TLAN_LED_REG, align 4
  %59 = load i32, i32* @TLAN_LED_LINK, align 4
  %60 = call i32 @TLan_DioWrite8(i32 %57, i32 %58, i32 %59)
  br label %80

61:                                               ; preds = %45
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store void (i64)* @TLan_Timer, void (i64)** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TLAN_TIMER_ACT_DELAY, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = call i32 @add_timer(%struct.TYPE_5__* %78)
  br label %87

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80, %35
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %87

86:                                               ; preds = %1
  br label %87

87:                                               ; preds = %86, %81, %61, %32, %29, %26, %23, %20, %17
  ret void
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyPowerDown(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyPowerUp(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyReset(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyStartLink(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyFinishAutoNeg(%struct.net_device*) #1

declare dso_local i32 @TLan_FinishReset(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TLan_DioWrite8(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
