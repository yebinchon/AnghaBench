; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_squeeze_objects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_squeeze_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_mcast_ramrod_params = type { i64, i32*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_ETH_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to clean ETH MACs: %d\0A\00", align 1
@BNX2X_UC_LIST_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to clean UC list MACs: %d\0A\00", align 1
@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to add a new DEL command to a multi-cast object: %d\0A\00", align 1
@BNX2X_MCAST_CMD_CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to clean multi-cast object: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_squeeze_objects(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = bitcast %struct.bnx2x_mcast_ramrod_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.bnx2x_vlan_mac_obj* %12, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %13 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %14 = call i32 @__set_bit(i32 %13, i64* %4)
  %15 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %16 = call i32 @__set_bit(i32 %15, i64* %4)
  %17 = load i32, i32* @BNX2X_ETH_MAC, align 4
  %18 = call i32 @__set_bit(i32 %17, i64* %5)
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %19, i32 0, i32 0
  %21 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)** %20, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = bitcast %struct.bnx2x* %22 to %struct.bnx2x.0*
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 %21(%struct.bnx2x.0* %23, %struct.bnx2x_vlan_mac_obj* %27, i64* %5, i64* %4)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %1
  store i64 0, i64* %5, align 8
  %35 = load i32, i32* @BNX2X_UC_LIST_MAC, align 4
  %36 = call i32 @__set_bit(i32 %35, i64* %5)
  %37 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %38 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %37, i32 0, i32 0
  %39 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)** %38, align 8
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = bitcast %struct.bnx2x* %40 to %struct.bnx2x.0*
  %42 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %43 = call i32 %39(%struct.bnx2x.0* %41, %struct.bnx2x_vlan_mac_obj* %42, i64* %5, i64* %4)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %34
  %50 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %6, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %54 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %6, i32 0, i32 0
  %55 = call i32 @__set_bit(i32 %53, i64* %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %58 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %56, %struct.bnx2x_mcast_ramrod_params* %6, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = load i32, i32* @BNX2X_MCAST_CMD_CONT, align 4
  %67 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %65, %struct.bnx2x_mcast_ramrod_params* %6, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %77, %64
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %81

77:                                               ; preds = %71
  %78 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %79 = load i32, i32* @BNX2X_MCAST_CMD_CONT, align 4
  %80 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %78, %struct.bnx2x_mcast_ramrod_params* %6, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %68

81:                                               ; preds = %74, %68
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i64*) #2

declare dso_local i32 @BNX2X_ERR(i8*, i32) #2

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
