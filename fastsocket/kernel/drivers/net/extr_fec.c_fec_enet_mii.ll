; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32 (i32, %struct.net_device*)* }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i64 }

@mii_head = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"MII and no head!\0A\00", align 1
@FEC_MII_DATA = common dso_local global i64 0, align 8
@mii_free = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_mii(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.fec_enet_private* %6, %struct.fec_enet_private** %3, align 8
  %7 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %8 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mii_head, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32 (i32, %struct.net_device*)*, i32 (i32, %struct.net_device*)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.net_device*)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32 (i32, %struct.net_device*)*, i32 (i32, %struct.net_device*)** %21, align 8
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FEC_MII_DATA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 %22(i32 %28, %struct.net_device* %29)
  br label %31

31:                                               ; preds = %19, %14
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** @mii_head, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mii_free, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** @mii_free, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mii_head, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %4, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %46 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FEC_MII_DATA, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %54 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
