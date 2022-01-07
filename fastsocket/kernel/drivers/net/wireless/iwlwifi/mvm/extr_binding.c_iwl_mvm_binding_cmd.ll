; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_iface_iterator_data = type { i32, i32*, i32*, %struct.iwl_mvm_phy_ctxt* }
%struct.iwl_mvm_phy_ctxt = type { i32, i32 }
%struct.iwl_binding_cmd = type { i8**, i8*, i8*, i8* }

@MAX_MACS_IN_BINDING = common dso_local global i32 0, align 4
@FW_CTXT_INVALID = common dso_local global i64 0, align 8
@BINDING_CONTEXT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to send binding (action:%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Binding command failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64, %struct.iwl_mvm_iface_iterator_data*)* @iwl_mvm_binding_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_binding_cmd(%struct.iwl_mvm* %0, i64 %1, %struct.iwl_mvm_iface_iterator_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_mvm_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_binding_cmd, align 8
  %9 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwl_mvm_iface_iterator_data* %2, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %13 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %13, i32 0, i32 3
  %15 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  store %struct.iwl_mvm_phy_ctxt* %15, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %16 = call i32 @memset(%struct.iwl_binding_cmd* %8, i32 0, i32 32)
  %17 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @FW_CMD_ID_AND_COLOR(i32 %19, i32 %22)
  %24 = call i8* @cpu_to_le32(i64 %23)
  %25 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @cpu_to_le32(i64 %26)
  %28 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @FW_CMD_ID_AND_COLOR(i32 %31, i32 %34)
  %36 = call i8* @cpu_to_le32(i64 %35)
  %37 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %50, %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MAX_MACS_IN_BINDING, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* @FW_CTXT_INVALID, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %38

53:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @FW_CMD_ID_AND_COLOR(i32 %67, i32 %74)
  %76 = call i8* @cpu_to_le32(i64 %75)
  %77 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %76, i8** %81, align 8
  br label %82

82:                                               ; preds = %60
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %54

85:                                               ; preds = %54
  store i64 0, i64* %12, align 8
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %87 = load i32, i32* @BINDING_CONTEXT_CMD, align 4
  %88 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %86, i32 %87, i32 32, %struct.iwl_binding_cmd* %8, i64* %12)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %108

97:                                               ; preds = %85
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %91
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @memset(%struct.iwl_binding_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_binding_cmd*, i64*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
