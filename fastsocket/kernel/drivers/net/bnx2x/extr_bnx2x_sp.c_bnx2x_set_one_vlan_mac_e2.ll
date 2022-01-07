; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i64 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i8*, i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_PAIR = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, i32)* @bnx2x_set_one_vlan_mac_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_one_vlan_mac_e2(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, i32 %4) #0 {
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
  %18 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %19, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %20, %struct.bnx2x_raw_obj** %11, align 8
  %21 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %22 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %24, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %28 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %27, i32 0, i32 1
  %29 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %29, i64 %31
  store %union.eth_classify_rule_cmd* %32, %union.eth_classify_rule_cmd** %14, align 8
  %33 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %34 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %16, align 4
  %43 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %44 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %17, align 4
  %50 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %18, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %61 = call i32 @memset(%struct.eth_classify_rules_ramrod_data* %60, i32 0, i32 16)
  br label %62

62:                                               ; preds = %59, %5
  %63 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %64 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @CLASSIFY_RULE_OPCODE_PAIR, align 4
  %67 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %68 = bitcast %union.eth_classify_rule_cmd* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %63, %struct.bnx2x_vlan_mac_obj* %64, i32 %65, i32 %66, i32* %69)
  %71 = load i32, i32* %17, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %74 = bitcast %union.eth_classify_rule_cmd* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  %76 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %77 = bitcast %union.eth_classify_rule_cmd* %76 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %80 = bitcast %union.eth_classify_rule_cmd* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %83 = bitcast %union.eth_classify_rule_cmd* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @bnx2x_set_fw_mac_addr(i32* %78, i32* %81, i32* %84, i32* %85)
  %87 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %88 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %96 = bitcast %union.eth_classify_rule_cmd* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %62
  %102 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %103 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %102, i32 1
  store %union.eth_classify_rule_cmd* %103, %union.eth_classify_rule_cmd** %14, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %107 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %108 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %110, align 8
  %112 = load i32, i32* @CLASSIFY_RULE_OPCODE_PAIR, align 4
  %113 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %114 = bitcast %union.eth_classify_rule_cmd* %113 to %struct.TYPE_6__*
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %106, %struct.bnx2x_vlan_mac_obj* %111, i32 1, i32 %112, i32* %115)
  %117 = load i32, i32* %17, align 4
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %120 = bitcast %union.eth_classify_rule_cmd* %119 to %struct.TYPE_6__*
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  store i8* %118, i8** %121, align 8
  %122 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %123 = bitcast %union.eth_classify_rule_cmd* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %126 = bitcast %union.eth_classify_rule_cmd* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %129 = bitcast %union.eth_classify_rule_cmd* %128 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @bnx2x_set_fw_mac_addr(i32* %124, i32* %127, i32* %130, i32* %131)
  %133 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %134 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %142 = bitcast %union.eth_classify_rule_cmd* %141 to %struct.TYPE_6__*
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  br label %144

144:                                              ; preds = %101, %62
  %145 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %146 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %149 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %152 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %151, i32 0, i32 0
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32 %147, i32 %150, i32* %152, i32 %153)
  ret void
}

declare dso_local i32 @memset(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnx2x_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
