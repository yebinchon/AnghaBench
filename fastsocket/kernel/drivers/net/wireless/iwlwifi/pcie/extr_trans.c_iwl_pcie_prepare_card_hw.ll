; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_prepare_card_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_prepare_card_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"iwl_trans_prepare_card_hw enter\0A\00", align 1
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_prepare_card_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call i32 @iwl_pcie_set_hw_ready(%struct.iwl_trans* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %16 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PREPARE, align 4
  %17 = call i32 @iwl_set_bit(%struct.iwl_trans* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %28, %13
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = call i32 @iwl_pcie_set_hw_ready(%struct.iwl_trans* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %18
  %25 = call i32 @usleep_range(i32 200, i32 1000)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 200
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 150000
  br i1 %30, label %18, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %23, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_set_hw_ready(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
