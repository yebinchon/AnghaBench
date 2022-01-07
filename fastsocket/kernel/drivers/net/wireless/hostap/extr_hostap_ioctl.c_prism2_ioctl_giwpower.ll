; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*, i32, i32*, i32, i32)* }

@HFA384X_RID_CNFPMENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@HFA384X_RID_CNFPMHOLDOVERDURATION = common dso_local global i32 0, align 4
@HFA384X_RID_CNFMAXSLEEPDURATION = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@HFA384X_RID_CNFMULTICASTRECEIVE = common dso_local global i32 0, align 4
@IW_POWER_ALL_R = common dso_local global i32 0, align 4
@IW_POWER_UNICAST_R = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_giwpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwpower(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %16)
  store %struct.hostap_interface* %17, %struct.hostap_interface** %10, align 8
  %18 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %19 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %28 = call i64 %25(%struct.net_device* %26, i32 %27, i32* %12, i32 2, i32 1)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %124

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %124

40:                                               ; preds = %33
  %41 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IW_POWER_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %40
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = load i32, i32* @HFA384X_RID_CNFPMHOLDOVERDURATION, align 4
  %58 = call i64 %55(%struct.net_device* %56, i32 %57, i32* %14, i32 2, i32 1)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %124

63:                                               ; preds = %50
  %64 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %65 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %66 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = mul nsw i32 %68, 1024
  %70 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %94

72:                                               ; preds = %40
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load i32, i32* @HFA384X_RID_CNFMAXSLEEPDURATION, align 4
  %80 = call i64 %77(%struct.net_device* %78, i32 %79, i32* %15, i32 2, i32 1)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %124

85:                                               ; preds = %72
  %86 = load i32, i32* @IW_POWER_PERIOD, align 4
  %87 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %88 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = mul nsw i32 %90, 1024
  %92 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %93 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %63
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %98, align 8
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = load i32, i32* @HFA384X_RID_CNFMULTICASTRECEIVE, align 4
  %102 = call i64 %99(%struct.net_device* %100, i32 %101, i32* %13, i32 2, i32 1)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %124

107:                                              ; preds = %94
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* @IW_POWER_ALL_R, align 4
  %113 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %114 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %123

117:                                              ; preds = %107
  %118 = load i32, i32* @IW_POWER_UNICAST_R, align 4
  %119 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %120 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %111
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %104, %82, %60, %37, %30
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
