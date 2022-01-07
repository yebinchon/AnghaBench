; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_host_cmd*)* @iwl_pcie_send_hcmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_send_hcmd_async(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %6, align 8
  %10 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CMD_WANT_SKB, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %23 = call i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans* %21, %struct.iwl_host_cmd* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %29 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IWL_ERR(%struct.iwl_trans* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %26, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @get_cmd_string(%struct.iwl_trans_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
