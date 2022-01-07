; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_send_hcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_send_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STATUS_RFKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Dropping CMD 0x%x: RF KILL\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_send_hcmd(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %6, align 8
  %9 = load i32, i32* @STATUS_FW_ERROR, align 4
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i32, i32* @STATUS_RFKILL, align 4
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %25 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ERFKILL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %17
  %32 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CMD_ASYNC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %40 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %41 = call i32 @iwl_pcie_send_hcmd_async(%struct.iwl_trans* %39, %struct.iwl_host_cmd* %40)
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %45 = call i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans* %43, %struct.iwl_host_cmd* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38, %23, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_send_hcmd_async(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
