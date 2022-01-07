; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 (%struct.net_device*, i32, i32*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@HFA384X_RID_TXRATECONTROL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@HFA384X_RID_CURRENTTXRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_giwrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostap_interface*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %14)
  store %struct.hostap_interface* %15, %struct.hostap_interface** %11, align 8
  %16 = load %struct.hostap_interface*, %struct.hostap_interface** %11, align 8
  %17 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load i32, i32* @HFA384X_RID_TXRATECONTROL, align 4
  %26 = call i64 %23(%struct.net_device* %24, i32 %25, i32* %10, i32 2, i32 1)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %113

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %40 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %44

41:                                               ; preds = %35, %31
  %42 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %43 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IW_MODE_MASTER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 100000
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i32 [ %73, %67 ], [ 11000000, %74 ]
  %77 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %78 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %113

79:                                               ; preds = %55, %50, %44
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = load i32, i32* @HFA384X_RID_CURRENTTXRATE, align 4
  %87 = call i64 %84(%struct.net_device* %85, i32 %86, i32* %10, i32 2, i32 1)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %113

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  switch i32 %93, label %106 [
    i32 130, label %94
    i32 129, label %97
    i32 128, label %100
    i32 131, label %103
  ]

94:                                               ; preds = %92
  %95 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %96 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %95, i32 0, i32 1
  store i32 1000000, i32* %96, align 4
  br label %111

97:                                               ; preds = %92
  %98 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %99 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %98, i32 0, i32 1
  store i32 2000000, i32* %99, align 4
  br label %111

100:                                              ; preds = %92
  %101 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  store i32 5500000, i32* %102, align 4
  br label %111

103:                                              ; preds = %92
  %104 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %105 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %104, i32 0, i32 1
  store i32 11000000, i32* %105, align 4
  br label %111

106:                                              ; preds = %92
  %107 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %108 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %107, i32 0, i32 1
  store i32 11000000, i32* %108, align 4
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %106, %103, %100, %97, %94
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %89, %75, %28
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
