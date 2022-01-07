; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.temac_local = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"temac_close()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.temac_local* @netdev_priv(%struct.net_device* %4)
  store %struct.temac_local* %5, %struct.temac_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %10 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.net_device* %12)
  %14 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %15 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %20 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %25 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @phy_disconnect(i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %30 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret i32 0
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
