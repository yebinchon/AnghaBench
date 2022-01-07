; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.ibmveth_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IbmVethMcastEnableRecv = common dso_local global i32 0, align 4
@IbmVethMcastDisableFiltering = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"h_multicast_ctrl rc=%ld when entering promisc mode\0A\00", align 1
@IbmVethMcastClearFilterTable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"h_multicast_ctrl rc=%ld when attempting to clear filter table\0A\00", align 1
@IbmVethMcastAddFilter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"h_multicast_ctrl rc=%ld when adding an entry to the filter table\0A\00", align 1
@IbmVethMcastEnableFiltering = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"h_multicast_ctrl rc=%ld when enabling filtering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ibmveth_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ibmveth_adapter* %9, %struct.ibmveth_adapter** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %16, %1
  %25 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IbmVethMcastEnableRecv, align 4
  %31 = load i32, i32* @IbmVethMcastDisableFiltering, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @h_multicast_ctrl(i32 %29, i32 %32, i64 0)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @H_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %37, %24
  br label %117

42:                                               ; preds = %16
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 2
  %45 = load %struct.dev_mc_list*, %struct.dev_mc_list** %44, align 8
  store %struct.dev_mc_list* %45, %struct.dev_mc_list** %5, align 8
  %46 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IbmVethMcastEnableRecv, align 4
  %52 = load i32, i32* @IbmVethMcastDisableFiltering, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IbmVethMcastClearFilterTable, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @h_multicast_ctrl(i32 %50, i32 %55, i64 0)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @H_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %42
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  store i64 0, i64* %7, align 8
  %73 = bitcast i64* %7 to i8*
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i8* %74, i32 %77, i32 6)
  %79 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IbmVethMcastAddFilter, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @h_multicast_ctrl(i32 %83, i32 %84, i64 %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @H_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %72
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %90, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %99 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %98, i32 0, i32 1
  %100 = load %struct.dev_mc_list*, %struct.dev_mc_list** %99, align 8
  store %struct.dev_mc_list* %100, %struct.dev_mc_list** %5, align 8
  br label %65

101:                                              ; preds = %65
  %102 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IbmVethMcastEnableFiltering, align 4
  %108 = call i64 @h_multicast_ctrl(i32 %106, i32 %107, i64 0)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @H_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %112, %101
  br label %117

117:                                              ; preds = %116, %41
  ret void
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @h_multicast_ctrl(i32, i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
