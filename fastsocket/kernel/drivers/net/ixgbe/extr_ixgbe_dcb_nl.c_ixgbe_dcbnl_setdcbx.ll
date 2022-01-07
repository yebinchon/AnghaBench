; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_setdcbx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_setdcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32 }
%struct.ieee_ets = type { i32, i32 }
%struct.ieee_pfc = type { i32, i32 }

@DCB_CAP_DCBX_LLD_MANAGED = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4
@BIT_PFC = common dso_local global i32 0, align 4
@BIT_PG_TX = common dso_local global i32 0, align 4
@BIT_PG_RX = common dso_local global i32 0, align 4
@BIT_APP_UPCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbe_dcbnl_setdcbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_setdcbx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ieee_ets, align 4
  %8 = alloca %struct.ieee_pfc, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %6, align 8
  %13 = bitcast %struct.ieee_ets* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.ieee_pfc* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DCB_CAP_DCBX_LLD_MANAGED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24, %2
  store i32 1, i32* %3, align 4
  br label %90

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %90

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %7, i32 0, i32 0
  store i32 8, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %8, i32 0, i32 0
  store i32 8, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @ixgbe_dcbnl_ieee_setets(%struct.net_device* %53, %struct.ieee_ets* %7)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @ixgbe_dcbnl_ieee_setpfc(%struct.net_device* %55, %struct.ieee_pfc* %8)
  br label %85

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i32, i32* @BIT_PFC, align 4
  %64 = load i32, i32* @BIT_PG_TX, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @BIT_PG_RX, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BIT_APP_UPCHG, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @ixgbe_dcbnl_set_all(%struct.net_device* %75)
  br label %84

77:                                               ; preds = %57
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = call i32 @ixgbe_dcbnl_ieee_setets(%struct.net_device* %78, %struct.ieee_ets* %7)
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @ixgbe_dcbnl_ieee_setpfc(%struct.net_device* %80, %struct.ieee_pfc* %8)
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @ixgbe_setup_tc(%struct.net_device* %82, i32 0)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %77, %62
  br label %85

85:                                               ; preds = %84, %52
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %41, %34
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ixgbe_dcbnl_ieee_setets(%struct.net_device*, %struct.ieee_ets*) #1

declare dso_local i32 @ixgbe_dcbnl_ieee_setpfc(%struct.net_device*, %struct.ieee_pfc*) #1

declare dso_local i32 @ixgbe_dcbnl_set_all(%struct.net_device*) #1

declare dso_local i32 @ixgbe_setup_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
