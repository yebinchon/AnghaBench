; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_vf_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_vf_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.enic = type { i32 }
%struct.enic_port_profile = type { i32, i32, i32, i32, i32 }

@PORT_PROFILE_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@ENIC_PORT_REQUEST_APPLIED = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@IFLA_PORT_REQUEST = common dso_local global i32 0, align 4
@IFLA_PORT_RESPONSE = common dso_local global i32 0, align 4
@ENIC_SET_NAME = common dso_local global i32 0, align 4
@IFLA_PORT_PROFILE = common dso_local global i32 0, align 4
@PORT_PROFILE_MAX = common dso_local global i32 0, align 4
@ENIC_SET_INSTANCE = common dso_local global i32 0, align 4
@IFLA_PORT_INSTANCE_UUID = common dso_local global i32 0, align 4
@PORT_UUID_MAX = common dso_local global i32 0, align 4
@ENIC_SET_HOST = common dso_local global i32 0, align 4
@IFLA_PORT_HOST_UUID = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.sk_buff*)* @enic_get_vf_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_get_vf_port(%struct.net_device* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.enic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.enic_port_profile*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.enic* @netdev_priv(%struct.net_device* %12)
  store %struct.enic* %13, %struct.enic** %8, align 8
  %14 = load i32, i32* @PORT_PROFILE_RESPONSE_SUCCESS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.enic*, %struct.enic** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %18 = call i32 @ENIC_PP_BY_INDEX(%struct.enic* %15, i32 %16, %struct.enic_port_profile* %17, i32* %11)
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %25 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ENIC_PORT_REQUEST_APPLIED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %111

33:                                               ; preds = %23
  %34 = load %struct.enic*, %struct.enic** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %37 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @enic_process_get_pp_request(%struct.enic* %34, i32 %35, i32 %38, i32* %9)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %111

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* @IFLA_PORT_REQUEST, align 4
  %47 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %48 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u16(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load i32, i32* @IFLA_PORT_RESPONSE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %106, label %58

58:                                               ; preds = %52
  %59 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %60 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ENIC_SET_NAME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @IFLA_PORT_PROFILE, align 4
  %68 = load i32, i32* @PORT_PROFILE_MAX, align 4
  %69 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %70 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put(%struct.sk_buff* %66, i32 %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %106, label %74

74:                                               ; preds = %65, %58
  %75 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %76 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ENIC_SET_INSTANCE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* @IFLA_PORT_INSTANCE_UUID, align 4
  %84 = load i32, i32* @PORT_UUID_MAX, align 4
  %85 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %86 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @nla_put(%struct.sk_buff* %82, i32 %83, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %81, %74
  %91 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %92 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ENIC_SET_HOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i32, i32* @IFLA_PORT_HOST_UUID, align 4
  %100 = load i32, i32* @PORT_UUID_MAX, align 4
  %101 = load %struct.enic_port_profile*, %struct.enic_port_profile** %10, align 8
  %102 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @nla_put(%struct.sk_buff* %98, i32 %99, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97, %81, %65, %52, %44
  br label %108

107:                                              ; preds = %97, %90
  store i32 0, i32* %4, align 4
  br label %111

108:                                              ; preds = %106
  %109 = load i32, i32* @EMSGSIZE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %107, %42, %30, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ENIC_PP_BY_INDEX(%struct.enic*, i32, %struct.enic_port_profile*, i32*) #1

declare dso_local i32 @enic_process_get_pp_request(%struct.enic*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
