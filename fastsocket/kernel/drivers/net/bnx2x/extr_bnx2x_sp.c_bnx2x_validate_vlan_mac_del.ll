; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.bnx2x_qable_obj = type { %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i64 (%struct.bnx2x_vlan_mac_obj*)*, %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, %struct.bnx2x_exe_queue_obj }
%struct.bnx2x_vlan_mac_registry_elem = type { i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_exe_queue_obj = type { i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)* }
%struct.bnx2x_exeq_elem = type opaque
%struct.bnx2x_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"DEL command is not allowed considering current registry state\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"There is a pending MOVE command already\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"There is a pending DEL command already\0A\00", align 1
@BNX2X_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to return a credit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem.1*)* @bnx2x_validate_vlan_mac_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_validate_vlan_mac_del(%struct.bnx2x* %0, %union.bnx2x_qable_obj* %1, %struct.bnx2x_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %union.bnx2x_qable_obj*, align 8
  %7 = alloca %struct.bnx2x_exeq_elem.1*, align 8
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca %struct.bnx2x_vlan_mac_registry_elem*, align 8
  %10 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  %11 = alloca %struct.bnx2x_exeq_elem.1, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %union.bnx2x_qable_obj* %1, %union.bnx2x_qable_obj** %6, align 8
  store %struct.bnx2x_exeq_elem.1* %2, %struct.bnx2x_exeq_elem.1** %7, align 8
  %12 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %13 = bitcast %union.bnx2x_qable_obj* %12 to %struct.bnx2x_vlan_mac_obj*
  store %struct.bnx2x_vlan_mac_obj* %13, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %14, i32 0, i32 2
  store %struct.bnx2x_exe_queue_obj* %15, %struct.bnx2x_exe_queue_obj** %10, align 8
  %16 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %16, i32 0, i32 1
  %18 = load %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)** %17, align 8
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = bitcast %struct.bnx2x* %19 to %struct.bnx2x.0*
  %21 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %22 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %23 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call %struct.bnx2x_vlan_mac_registry_elem* %18(%struct.bnx2x.0* %20, %struct.bnx2x_vlan_mac_obj* %21, i32* %25)
  store %struct.bnx2x_vlan_mac_registry_elem* %26, %struct.bnx2x_vlan_mac_registry_elem** %9, align 8
  %27 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %9, align 8
  %28 = icmp ne %struct.bnx2x_vlan_mac_registry_elem* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @BNX2X_MSG_SP, align 4
  %31 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %86

34:                                               ; preds = %3
  %35 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %36 = call i32 @memcpy(%struct.bnx2x_exeq_elem.1* %11, %struct.bnx2x_exeq_elem.1* %35, i32 12)
  %37 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %38 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %10, align 8
  %42 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %41, i32 0, i32 0
  %43 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %42, align 8
  %44 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %10, align 8
  %45 = bitcast %struct.bnx2x_exeq_elem.1* %11 to %struct.bnx2x_exeq_elem*
  %46 = call i64 %43(%struct.bnx2x_exe_queue_obj* %44, %struct.bnx2x_exeq_elem* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %86

52:                                               ; preds = %34
  %53 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %10, align 8
  %54 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %53, i32 0, i32 0
  %55 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %54, align 8
  %56 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %10, align 8
  %57 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %58 = bitcast %struct.bnx2x_exeq_elem.1* %57 to %struct.bnx2x_exeq_elem*
  %59 = call i64 %55(%struct.bnx2x_exe_queue_obj* %56, %struct.bnx2x_exeq_elem* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @BNX2X_MSG_SP, align 4
  %63 = call i32 @DP(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EEXIST, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %86

66:                                               ; preds = %52
  %67 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT, align 4
  %68 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %69 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %67, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %66
  %75 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %76 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %75, i32 0, i32 0
  %77 = load i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)** %76, align 8
  %78 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %79 = call i64 %77(%struct.bnx2x_vlan_mac_obj* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %74, %66
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %81, %61, %48, %29
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
