; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.vio_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vio_dev = type { i32 }

@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@IBMVETH_MIN_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ibmveth_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibmveth_adapter*, align 8
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmveth_adapter* %13, %struct.ibmveth_adapter** %6, align 8
  %14 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %14, i32 0, i32 3
  %16 = load %struct.vio_dev*, %struct.vio_dev** %15, align 8
  store %struct.vio_dev* %16, %struct.vio_dev** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IBMVETH_MIN_MTU, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %126

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %32, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %27

47:                                               ; preds = %42, %27
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %126

54:                                               ; preds = %47
  %55 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @netif_running(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  %61 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ibmveth_close(i32 %65)
  %67 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %54
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %109, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %82, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %74
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %97 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %98 = call i32 @ibmveth_get_desired_dma(%struct.vio_dev* %97)
  %99 = call i32 @vio_cmo_set_dev_desired(%struct.vio_dev* %96, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ibmveth_open(i32 %105)
  store i32 %106, i32* %3, align 4
  br label %126

107:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %126

108:                                              ; preds = %74
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %70

112:                                              ; preds = %70
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ibmveth_open(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %126

123:                                              ; preds = %115, %112
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %121, %107, %102, %51, %23
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ibmveth_close(i32) #1

declare dso_local i32 @vio_cmo_set_dev_desired(%struct.vio_dev*, i32) #1

declare dso_local i32 @ibmveth_get_desired_dma(%struct.vio_dev*) #1

declare dso_local i32 @ibmveth_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
