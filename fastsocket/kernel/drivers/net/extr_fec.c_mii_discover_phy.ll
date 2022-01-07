; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_discover_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_discover_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i64, i64 }

@MII_REG_PHYIR2 = common dso_local global i32 0, align 4
@MII_REG_PHYIR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FEC: No PHY device found.\0A\00", align 1
@FEC_MII_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_discover_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_discover_phy(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %5, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 65535
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 65535
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i32, i32* @MII_REG_PHYIR2, align 4
  %27 = call i32 @mk_mii_read(i32 %26)
  %28 = call i32 @mii_queue_unlocked(%struct.net_device* %25, i32 %27, void (i32, %struct.net_device*)* @mii_discover_phy3)
  br label %38

29:                                               ; preds = %17, %13
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* @MII_REG_PHYIR1, align 4
  %36 = call i32 @mk_mii_read(i32 %35)
  %37 = call i32 @mii_queue_unlocked(%struct.net_device* %34, i32 %36, void (i32, %struct.net_device*)* @mii_discover_phy)
  br label %38

38:                                               ; preds = %29, %20
  br label %49

39:                                               ; preds = %2
  %40 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FEC_MII_SPEED, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %48 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_queue_unlocked(%struct.net_device*, i32, void (i32, %struct.net_device*)*) #1

declare dso_local i32 @mk_mii_read(i32) #1

declare dso_local void @mii_discover_phy3(i32, %struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
