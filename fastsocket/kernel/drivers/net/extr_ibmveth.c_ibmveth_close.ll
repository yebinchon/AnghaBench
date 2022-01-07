; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"close starting\0A\00", align 1
@VIO_IRQ_DISABLE = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"h_free_logical_lan failed with %lx, continuing with close\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"close complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmveth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.ibmveth_adapter* %6, %struct.ibmveth_adapter** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netdev_dbg(%struct.net_device* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %9, i32 0, i32 4
  %11 = call i32 @napi_disable(i32* %10)
  %12 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VIO_IRQ_DISABLE, align 4
  %26 = call i32 @h_vio_signal(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %42, %19
  %28 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @h_free_logical_lan(i32 %32)
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @H_IS_LONG_BUSY(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @H_BUSY, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ true, %34 ], [ %41, %38 ]
  br i1 %43, label %27, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @H_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @free_irq(i32 %55, %struct.net_device* %56)
  %58 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds i8, i8* %61, i64 4096
  %63 = getelementptr inbounds i8, i8* %62, i64 -8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %69 = call i32 @ibmveth_cleanup(%struct.ibmveth_adapter* %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @netdev_dbg(%struct.net_device* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @h_vio_signal(i32, i32) #1

declare dso_local i64 @h_free_logical_lan(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_cleanup(%struct.ibmveth_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
