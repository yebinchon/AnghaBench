; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.bnx2x_qable_obj = type { %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj*, i32*)*, %struct.bnx2x_exe_queue_obj }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_exe_queue_obj = type { i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)* }
%struct.bnx2x_exeq_elem = type opaque
%struct.bnx2x_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.bnx2x_vlan_mac_obj* }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"MOVE command is not allowed considering current registry state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"There is a pending DEL command on the source queue already\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"There is a pending MOVE command already\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"There is a pending ADD command on the destination queue already\0A\00", align 1
@BNX2X_DONT_CONSUME_CAM_CREDIT_DEST = common dso_local global i32 0, align 4
@BNX2X_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem.1*)* @bnx2x_validate_vlan_mac_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_validate_vlan_mac_move(%struct.bnx2x* %0, %union.bnx2x_qable_obj* %1, %struct.bnx2x_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %union.bnx2x_qable_obj*, align 8
  %7 = alloca %struct.bnx2x_exeq_elem.1*, align 8
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %10 = alloca %struct.bnx2x_exeq_elem.1, align 8
  %11 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  %12 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %union.bnx2x_qable_obj* %1, %union.bnx2x_qable_obj** %6, align 8
  store %struct.bnx2x_exeq_elem.1* %2, %struct.bnx2x_exeq_elem.1** %7, align 8
  %13 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %14 = bitcast %union.bnx2x_qable_obj* %13 to %struct.bnx2x_vlan_mac_obj*
  store %struct.bnx2x_vlan_mac_obj* %14, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %15 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %18, align 8
  store %struct.bnx2x_vlan_mac_obj* %19, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %20 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %20, i32 0, i32 3
  store %struct.bnx2x_exe_queue_obj* %21, %struct.bnx2x_exe_queue_obj** %11, align 8
  %22 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %22, i32 0, i32 3
  store %struct.bnx2x_exe_queue_obj* %23, %struct.bnx2x_exe_queue_obj** %12, align 8
  %24 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %24, i32 0, i32 2
  %26 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj*, i32*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj*, i32*)** %25, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = bitcast %struct.bnx2x* %27 to %struct.bnx2x.0*
  %29 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %30 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %31 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = call i32 %26(%struct.bnx2x.0* %28, %struct.bnx2x_vlan_mac_obj* %29, %struct.bnx2x_vlan_mac_obj* %30, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @BNX2X_MSG_SP, align 4
  %39 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %132

42:                                               ; preds = %3
  %43 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %44 = call i32 @memcpy(%struct.bnx2x_exeq_elem.1* %10, %struct.bnx2x_exeq_elem.1* %43, i32 24)
  %45 = load i32, i32* @BNX2X_VLAN_MAC_DEL, align 4
  %46 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %10, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %50 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %49, i32 0, i32 0
  %51 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %50, align 8
  %52 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %53 = bitcast %struct.bnx2x_exeq_elem.1* %10 to %struct.bnx2x_exeq_elem*
  %54 = call i64 %51(%struct.bnx2x_exe_queue_obj* %52, %struct.bnx2x_exeq_elem* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %132

60:                                               ; preds = %42
  %61 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %62 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %61, i32 0, i32 0
  %63 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %62, align 8
  %64 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %65 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %66 = bitcast %struct.bnx2x_exeq_elem.1* %65 to %struct.bnx2x_exeq_elem*
  %67 = call i64 %63(%struct.bnx2x_exe_queue_obj* %64, %struct.bnx2x_exeq_elem* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* @BNX2X_MSG_SP, align 4
  %71 = call i32 @DP(i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %132

74:                                               ; preds = %60
  %75 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %76 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %12, align 8
  %80 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %79, i32 0, i32 0
  %81 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %80, align 8
  %82 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %12, align 8
  %83 = bitcast %struct.bnx2x_exeq_elem.1* %10 to %struct.bnx2x_exeq_elem*
  %84 = call i64 %81(%struct.bnx2x_exe_queue_obj* %82, %struct.bnx2x_exeq_elem* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %132

90:                                               ; preds = %74
  %91 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT_DEST, align 4
  %92 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %93 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %91, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %90
  %99 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %100 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %99, i32 0, i32 1
  %101 = load i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)** %100, align 8
  %102 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %103 = call i64 %101(%struct.bnx2x_vlan_mac_obj* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %132

108:                                              ; preds = %98, %90
  %109 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT, align 4
  %110 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %111 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i64 @test_bit(i32 %109, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %108
  %117 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %118 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %117, i32 0, i32 0
  %119 = load i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)** %118, align 8
  %120 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %121 = call i64 %119(%struct.bnx2x_vlan_mac_obj* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %116
  %124 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %125 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %124, i32 0, i32 0
  %126 = load i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)** %125, align 8
  %127 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %128 = call i64 %126(%struct.bnx2x_vlan_mac_obj* %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %132

131:                                              ; preds = %116, %108
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %123, %105, %86, %69, %56, %37
  %133 = load i32, i32* %4, align 4
  ret i32 %133
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
