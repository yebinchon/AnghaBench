; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_set_ratid_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_set_ratid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@SCD_QUEUE_RA_TID_MAP_RATID_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i32)* @iwl_pcie_txq_set_ratid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_txq_set_ratid_map(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SCD_QUEUE_RA_TID_MAP_RATID_MSK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32 %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 65535
  %33 = or i32 %30, %32
  store i32 %33, i32* %9, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, -65536
  %38 = or i32 %35, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @iwl_trans_write_mem32(%struct.iwl_trans* %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @iwl_trans_read_mem32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_write_mem32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
