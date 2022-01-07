; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_user_dropin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_user_dropin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32, %struct.TYPE_2__, %struct.gru_mm_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.gru_mm_struct = type { i32, i32 }
%struct.gru_tlb_fault_handle = type { i32 }

@call_os_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_thread_state*, %struct.gru_tlb_fault_handle*, i8*)* @gru_user_dropin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_user_dropin(%struct.gru_thread_state* %0, %struct.gru_tlb_fault_handle* %1, i8* %2) #0 {
  %4 = alloca %struct.gru_thread_state*, align 8
  %5 = alloca %struct.gru_tlb_fault_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gru_mm_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %4, align 8
  store %struct.gru_tlb_fault_handle* %1, %struct.gru_tlb_fault_handle** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %10 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %9, i32 0, i32 2
  %11 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %10, align 8
  store %struct.gru_mm_struct* %11, %struct.gru_mm_struct** %7, align 8
  %12 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %13 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %3, %40
  %18 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %7, align 8
  %19 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %7, align 8
  %22 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event(i32 %20, i32 %25)
  %27 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %5, align 8
  %28 = call i32 @prefetchw(%struct.gru_tlb_fault_handle* %27)
  %29 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %30 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %33 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @gru_try_dropin(i32 %31, %struct.gru_thread_state* %32, %struct.gru_tlb_fault_handle* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* %8, align 4
  ret i32 %39

40:                                               ; preds = %17
  %41 = load i32, i32* @call_os_wait_queue, align 4
  %42 = call i32 @STAT(i32 %41)
  br label %17
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @prefetchw(%struct.gru_tlb_fault_handle*) #1

declare dso_local i32 @gru_try_dropin(i32, %struct.gru_thread_state*, %struct.gru_tlb_fault_handle*, i8*) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
