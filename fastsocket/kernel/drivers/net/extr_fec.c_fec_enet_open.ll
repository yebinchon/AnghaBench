; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@phy_cmd_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @fec_enet_alloc_buffers(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @fec_restart(%struct.net_device* %19, i32 1)
  %21 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %22 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %14
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mii_do_cmd(%struct.net_device* %26, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %35 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mii_do_cmd(%struct.net_device* %33, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load i32, i32* @phy_cmd_config, align 4
  %42 = call i32 @mii_do_cmd(%struct.net_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %49, %25
  %44 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %45 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @schedule()
  br label %43

51:                                               ; preds = %43
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %54 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mii_do_cmd(%struct.net_device* %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %14
  %60 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %61 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @netif_start_queue(%struct.net_device* %62)
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fec_enet_alloc_buffers(%struct.net_device*) #1

declare dso_local i32 @fec_restart(%struct.net_device*, i32) #1

declare dso_local i32 @mii_do_cmd(%struct.net_device*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
