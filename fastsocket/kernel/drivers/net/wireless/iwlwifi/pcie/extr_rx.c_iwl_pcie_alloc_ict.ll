; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_alloc_ict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_alloc_ict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, i64 }

@ICT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ict dma addr %Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ict vir addr %p\0A\00", align 1
@CSR_INT_BIT_RX_PERIODIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_alloc_ict(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %4, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ICT_SIZE, align 4
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @dma_alloc_coherent(i32 %9, i32 %10, i32* %12, i32 %13)
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %62

24:                                               ; preds = %1
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ICT_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %35 = call i32 @iwl_pcie_free_ict(%struct.iwl_trans* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %24
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ICT_SIZE, align 4
  %54 = call i32 @memset(i64 %52, i32 0, i32 %53)
  %55 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %38, %33, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_pcie_free_ict(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
