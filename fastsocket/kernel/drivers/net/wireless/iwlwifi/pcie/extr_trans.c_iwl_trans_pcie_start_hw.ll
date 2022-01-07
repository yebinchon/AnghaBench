; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_start_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error while preparing HW: %d\0A\00", align 1
@STATUS_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_trans_pcie_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_start_hw(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %4, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %10 = call i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IWL_ERR(%struct.iwl_trans* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = call i32 @iwl_pcie_apm_init(%struct.iwl_trans* %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* @STATUS_RFKILL, align 4
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %37

32:                                               ; preds = %18
  %33 = load i32, i32* @STATUS_RFKILL, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @iwl_op_mode_hw_rf_kill(i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_op_mode_hw_rf_kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
