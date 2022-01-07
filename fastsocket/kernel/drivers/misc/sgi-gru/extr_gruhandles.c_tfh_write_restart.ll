; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruhandles.c_tfh_write_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruhandles.c_tfh_write_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_tlb_fault_handle = type { i32, i64, i64, i32, i32, i32, i32 }

@GRU_PADDR_SHIFT = common dso_local global i64 0, align 8
@TFHOP_WRITE_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tfh_write_restart(%struct.gru_tlb_fault_handle* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.gru_tlb_fault_handle*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gru_tlb_fault_handle* %0, %struct.gru_tlb_fault_handle** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %17 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %20 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @GRU_PADDR_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %25 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %28 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %31 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %34 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @TFHOP_WRITE_RESTART, align 4
  %36 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %37 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %39 = call i32 @start_instruction(%struct.gru_tlb_fault_handle* %38)
  ret void
}

declare dso_local i32 @start_instruction(%struct.gru_tlb_fault_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
