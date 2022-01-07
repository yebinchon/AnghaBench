; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruhandles.h_gru_tfh_to_cbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruhandles.h_gru_tfh_to_cbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_control_block_extended = type { i32 }
%struct.gru_tlb_fault_handle = type { i32 }

@GRU_TFH_BASE = common dso_local global i64 0, align 8
@GRU_CBE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gru_control_block_extended* (%struct.gru_tlb_fault_handle*)* @gru_tfh_to_cbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gru_control_block_extended* @gru_tfh_to_cbe(%struct.gru_tlb_fault_handle* %0) #0 {
  %2 = alloca %struct.gru_tlb_fault_handle*, align 8
  %3 = alloca i64, align 8
  store %struct.gru_tlb_fault_handle* %0, %struct.gru_tlb_fault_handle** %2, align 8
  %4 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %2, align 8
  %5 = ptrtoint %struct.gru_tlb_fault_handle* %4 to i64
  %6 = load i64, i64* @GRU_TFH_BASE, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @GRU_CBE_BASE, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to %struct.gru_control_block_extended*
  ret %struct.gru_control_block_extended* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
