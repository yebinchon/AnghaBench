; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i32 }

@PHY_HALTED = common dso_local global i64 0, align 8
@PHY_POLL = common dso_local global i64 0, align 8
@PHY_INTERRUPT_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_stop(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i64, i64* @PHY_HALTED, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PHY_POLL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %20 = load i32, i32* @PHY_INTERRUPT_DISABLED, align 4
  %21 = call i32 @phy_config_interrupt(%struct.phy_device* %19, i32 %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = call i32 @phy_clear_interrupt(%struct.phy_device* %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i64, i64* @PHY_HALTED, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %11
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @phy_config_interrupt(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_clear_interrupt(%struct.phy_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
