; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_set_one_rule_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_set_one_rule_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i64 }
%union.bnx2x_mcast_config_data = type { i32 }
%struct.mac_configuration_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32 }

@BNX2X_MCAST_CMD_ADD = common dso_local global i32 0, align 4
@BNX2X_MCAST_CMD_RESTORE = common dso_local global i32 0, align 4
@MAC_CONFIGURATION_ENTRY_ACTION_TYPE = common dso_local global i32 0, align 4
@T_ETH_MAC_COMMAND_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, i32, %union.bnx2x_mcast_config_data*, i32)* @bnx2x_mcast_set_one_rule_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_set_one_rule_e1(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, i32 %2, %union.bnx2x_mcast_config_data* %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_mcast_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.bnx2x_mcast_config_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.mac_configuration_cmd*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.bnx2x_mcast_config_data* %3, %union.bnx2x_mcast_config_data** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %14 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %13, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %14, %struct.bnx2x_raw_obj** %11, align 8
  %15 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %16 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mac_configuration_cmd*
  store %struct.mac_configuration_cmd* %18, %struct.mac_configuration_cmd** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @BNX2X_MCAST_CMD_ADD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @BNX2X_MCAST_CMD_RESTORE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %22, %5
  %27 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %28 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %42 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load %union.bnx2x_mcast_config_data*, %union.bnx2x_mcast_config_data** %9, align 8
  %49 = bitcast %union.bnx2x_mcast_config_data* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bnx2x_set_fw_mac_addr(i32* %33, i32* %40, i32* %47, i32 %50)
  %52 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %53 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %60 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %63 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %61, i32* %68, align 8
  %69 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %70 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 1, %71
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %75 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 4
  %81 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %82 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAC_CONFIGURATION_ENTRY_ACTION_TYPE, align 4
  %90 = load i32, i32* @T_ETH_MAC_COMMAND_SET, align 4
  %91 = call i32 @SET_FLAG(i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @bnx2x_set_fw_mac_addr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @SET_FLAG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
