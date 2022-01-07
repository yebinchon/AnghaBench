; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.w90p910_ether = type { i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@CAMCMR_AUP = common dso_local global i32 0, align 4
@CAMCMR_AMP = common dso_local global i32 0, align 4
@CAMCMR_ABP = common dso_local global i32 0, align 4
@CAMCMR_ECMP = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@REG_CAMCMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @w90p910_ether_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_ether_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w90p910_ether*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %5)
  store %struct.w90p910_ether* %6, %struct.w90p910_ether** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @CAMCMR_AUP, align 4
  %15 = load i32, i32* @CAMCMR_AMP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CAMCMR_ABP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CAMCMR_ECMP, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_ALLMULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28, %21
  %34 = load i32, i32* @CAMCMR_AMP, align 4
  %35 = load i32, i32* @CAMCMR_ABP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CAMCMR_ECMP, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @CAMCMR_ECMP, align 4
  %41 = load i32, i32* @CAMCMR_ABP, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %47 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_CAMCMR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 %45, i64 %50)
  ret void
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
