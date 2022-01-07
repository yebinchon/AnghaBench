; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_set_offload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@TUN_USER_FEATURES = common dso_local global i32 0, align 4
@TUN_F_CSUM = common dso_local global i64 0, align 8
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@TUN_F_TSO4 = common dso_local global i64 0, align 8
@TUN_F_TSO6 = common dso_local global i64 0, align 8
@TUN_F_TSO_ECN = common dso_local global i64 0, align 8
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@TUN_F_UFO = common dso_local global i64 0, align 8
@NETIF_F_UFO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @set_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_offload(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NETIF_F_SG, align 4
  %13 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TUN_USER_FEATURES, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @TUN_F_CSUM, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %2
  %24 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %25 = load i32, i32* @NETIF_F_SG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* @TUN_F_CSUM, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @TUN_F_TSO4, align 8
  %37 = load i64, i64* @TUN_F_TSO6, align 8
  %38 = or i64 %36, %37
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %23
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %5, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TUN_F_TSO4, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @NETIF_F_TSO, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @TUN_F_TSO6, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @NETIF_F_TSO6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i64, i64* @TUN_F_TSO4, align 8
  %74 = load i64, i64* @TUN_F_TSO6, align 8
  %75 = or i64 %73, %74
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %5, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %72, %23
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @TUN_F_UFO, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, i32* @NETIF_F_UFO, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i64, i64* @TUN_F_UFO, align 8
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %5, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %2
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %112

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @netdev_features_change(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %108, %99
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @netdev_features_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
