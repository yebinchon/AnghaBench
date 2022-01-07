; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_get_desired_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_get_desired_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@IBMVETH_IO_ENTITLEMENT_DEFAULT = common dso_local global i32 0, align 4
@IBMVETH_BUFF_LIST_SIZE = common dso_local global i64 0, align 8
@IBMVETH_FILT_LIST_SIZE = common dso_local global i64 0, align 8
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vio_dev*)* @ibmveth_get_desired_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmveth_get_desired_dma(%struct.vio_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %9 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %9, i32 0, i32 0
  %11 = call %struct.net_device* @dev_get_drvdata(i32* %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp eq %struct.net_device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @IBMVETH_IO_ENTITLEMENT_DEFAULT, align 4
  %16 = call i64 @IOMMU_PAGE_ALIGN(i32 %15)
  store i64 %16, i64* %2, align 8
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.ibmveth_adapter* %19, %struct.ibmveth_adapter** %5, align 8
  %20 = load i64, i64* @IBMVETH_BUFF_LIST_SIZE, align 8
  %21 = load i64, i64* @IBMVETH_FILT_LIST_SIZE, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IOMMU_PAGE_ALIGN(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %77, %17
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %33
  %44 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IOMMU_PAGE_ALIGN(i32 %59)
  %61 = mul i64 %51, %60
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %43, %33
  %65 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %29

80:                                               ; preds = %29
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i64 @IOMMU_PAGE_ALIGN(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %80, %14
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local %struct.net_device* @dev_get_drvdata(i32*) #1

declare dso_local i64 @IOMMU_PAGE_ALIGN(i32) #1

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
