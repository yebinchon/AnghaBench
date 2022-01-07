; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_sge_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_sge_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i32, i64 }
%struct.port_info = type { i64, i32, %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qset_params* }
%struct.qset_params = type { i64, i64, i64, i32* }

@MAX_RX_BUFFERS = common dso_local global i64 0, align 8
@MAX_RX_JUMBO_BUFFERS = common dso_local global i64 0, align 8
@MAX_TXQ_ENTRIES = common dso_local global i32 0, align 4
@MAX_RSPQ_ENTRIES = common dso_local global i64 0, align 8
@MIN_RSPQ_ENTRIES = common dso_local global i64 0, align 8
@MIN_FL_ENTRIES = common dso_local global i64 0, align 8
@MIN_TXQ_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @set_sge_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sge_param(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.qset_params*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.port_info* @netdev_priv(%struct.net_device* %10)
  store %struct.port_info* %11, %struct.port_info** %6, align 8
  %12 = load %struct.port_info*, %struct.port_info** %6, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 2
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_RX_BUFFERS, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %67, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAX_RX_JUMBO_BUFFERS, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %67, label %26

26:                                               ; preds = %20
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX_TXQ_ENTRIES, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %67, label %32

32:                                               ; preds = %26
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAX_RSPQ_ENTRIES, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %32
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MIN_RSPQ_ENTRIES, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %67, label %44

44:                                               ; preds = %38
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MIN_FL_ENTRIES, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %44
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MIN_FL_ENTRIES, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MIN_TXQ_ENTRIES, align 4
  %65 = mul nsw i32 %63, %64
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56, %50, %44, %38, %32, %26, %20, %2
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %139

70:                                               ; preds = %56
  %71 = load %struct.adapter*, %struct.adapter** %7, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FULL_INIT_DONE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %139

80:                                               ; preds = %70
  %81 = load %struct.adapter*, %struct.adapter** %7, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.qset_params*, %struct.qset_params** %84, align 8
  %86 = load %struct.port_info*, %struct.port_info** %6, align 8
  %87 = getelementptr inbounds %struct.port_info, %struct.port_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %85, i64 %88
  store %struct.qset_params* %89, %struct.qset_params** %8, align 8
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %133, %80
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.port_info*, %struct.port_info** %6, align 8
  %93 = getelementptr inbounds %struct.port_info, %struct.port_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %138

96:                                               ; preds = %90
  %97 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %101 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %106 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %111 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %116 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  %119 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %123 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %130 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %96
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %137 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %136, i32 1
  store %struct.qset_params* %137, %struct.qset_params** %8, align 8
  br label %90

138:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %77, %67
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
