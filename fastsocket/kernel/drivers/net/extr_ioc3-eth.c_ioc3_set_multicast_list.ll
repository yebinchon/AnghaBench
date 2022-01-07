; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.ioc3_private = type { i32, i32, i32, %struct.ioc3* }
%struct.ioc3 = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@EMCR_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  %4 = alloca %struct.ioc3_private*, align 8
  %5 = alloca %struct.ioc3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %10, align 8
  store %struct.dev_mc_list* %11, %struct.dev_mc_list** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %12)
  store %struct.ioc3_private* %13, %struct.ioc3_private** %4, align 8
  %14 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %15 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %14, i32 0, i32 3
  %16 = load %struct.ioc3*, %struct.ioc3** %15, align 8
  store %struct.ioc3* %16, %struct.ioc3** %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @EMCR_PROMISC, align 4
  %27 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %28 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %32 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ioc3_w_emcr(i32 %33)
  %35 = call i32 (...) @ioc3_r_emcr()
  br label %115

36:                                               ; preds = %1
  %37 = load i32, i32* @EMCR_PROMISC, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %40 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %44 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ioc3_w_emcr(i32 %45)
  %47 = call i32 (...) @ioc3_r_emcr()
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IFF_ALLMULTI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %36
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 64
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %36
  %60 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %61 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %63 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 4
  br label %104

64:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %73 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %8, align 8
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 1
  %77 = load %struct.dev_mc_list*, %struct.dev_mc_list** %76, align 8
  store %struct.dev_mc_list* %77, %struct.dev_mc_list** %3, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %71
  br label %90

84:                                               ; preds = %71
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @ioc3_hash(i8* %85)
  %87 = shl i64 1, %86
  %88 = load i64, i64* %6, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %65

93:                                               ; preds = %65
  %94 = load i64, i64* %6, align 8
  %95 = lshr i64 %94, 32
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %98 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* %6, align 8
  %100 = and i64 %99, 4294967295
  %101 = trunc i64 %100 to i32
  %102 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %103 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %59
  %105 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %106 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = call i32 @ioc3_w_ehar_h(i64 %108)
  %110 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %111 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 @ioc3_w_ehar_l(i64 %113)
  br label %115

115:                                              ; preds = %104, %25
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = call i32 @netif_wake_queue(%struct.net_device* %116)
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ioc3_w_emcr(i32) #1

declare dso_local i32 @ioc3_r_emcr(...) #1

declare dso_local i64 @ioc3_hash(i8*) #1

declare dso_local i32 @ioc3_w_ehar_h(i64) #1

declare dso_local i32 @ioc3_w_ehar_l(i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
