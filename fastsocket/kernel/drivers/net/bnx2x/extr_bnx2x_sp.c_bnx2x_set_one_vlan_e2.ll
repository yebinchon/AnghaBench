; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i64 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.bnx2x_vlan_mac_obj*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_VLAN = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"About to %s VLAN %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, i32)* @bnx2x_set_one_vlan_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_one_vlan_e2(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.eth_classify_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.eth_classify_rule_cmd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %18, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %19, %struct.bnx2x_raw_obj** %11, align 8
  %20 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %21 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %23, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %27 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %26, i32 0, i32 1
  %28 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %28, i64 %30
  store %union.eth_classify_rule_cmd* %31, %union.eth_classify_rule_cmd** %14, align 8
  %32 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %16, align 4
  %42 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %43 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %5
  %52 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %53 = call i32 @memset(%struct.eth_classify_rules_ramrod_data* %52, i32 0, i32 16)
  br label %54

54:                                               ; preds = %51, %5
  %55 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %56 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @CLASSIFY_RULE_OPCODE_VLAN, align 4
  %59 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %60 = bitcast %union.eth_classify_rule_cmd* %59 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %55, %struct.bnx2x_vlan_mac_obj* %56, i32 %57, i32 %58, i32* %61)
  %63 = load i32, i32* @BNX2X_MSG_SP, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @DP(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %73 = bitcast %union.eth_classify_rule_cmd* %72 to %struct.TYPE_10__*
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %54
  %79 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %80 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %79, i32 1
  store %union.eth_classify_rule_cmd* %80, %union.eth_classify_rule_cmd** %14, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %84 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %85 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %87, align 8
  %89 = load i32, i32* @CLASSIFY_RULE_OPCODE_VLAN, align 4
  %90 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %91 = bitcast %union.eth_classify_rule_cmd* %90 to %struct.TYPE_10__*
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %83, %struct.bnx2x_vlan_mac_obj* %88, i32 1, i32 %89, i32* %92)
  %94 = load i32, i32* %17, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %97 = bitcast %union.eth_classify_rule_cmd* %96 to %struct.TYPE_10__*
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %78, %54
  %100 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %101 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %104 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %107 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %106, i32 0, i32 0
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32 %102, i32 %105, i32* %107, i32 %108)
  ret void
}

declare dso_local i32 @memset(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
