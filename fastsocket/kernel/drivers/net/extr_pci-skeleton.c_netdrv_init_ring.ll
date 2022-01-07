; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdrv_private = type { i32*, i32**, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@NUM_TX_DESC = common dso_local global i32 0, align 4
@TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdrv_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdrv_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdrv_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %5)
  store %struct.netdrv_private* %6, %struct.netdrv_private** %3, align 8
  %7 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %10, i32 0, i32 4
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %13, i32 0, i32 3
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NUM_TX_DESC, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %22 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %29 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %36 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TX_BUF_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %44 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %42, i32** %48, align 8
  br label %49

49:                                               ; preds = %20
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %16

52:                                               ; preds = %16
  %53 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
