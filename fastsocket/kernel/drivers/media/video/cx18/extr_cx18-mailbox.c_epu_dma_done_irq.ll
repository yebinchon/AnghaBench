; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_dma_done_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_dma_done_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64 }
%struct.cx18_in_work_order = type { i32, i32, %struct.cx18_mailbox }
%struct.cx18_mailbox = type { i64* }

@CX18_INVALID_TASK_HANDLE = common dso_local global i64 0, align 8
@CX18_MAX_MDL_ACKS = common dso_local global i64 0, align 8
@CX18_F_EWO_MB_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_dma_done_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epu_dma_done_irq(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.cx18_in_work_order*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cx18_mailbox*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %5, align 8
  %10 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %11 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %10, i32 0, i32 2
  store %struct.cx18_mailbox* %11, %struct.cx18_mailbox** %9, align 8
  %12 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %13 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %18 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %23 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @CX18_INVALID_TASK_HANDLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @CX18_MAX_MDL_ACKS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33, %30, %2
  %38 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %39 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CX18_F_EWO_MB_STALE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.cx18*, %struct.cx18** %4, align 8
  %46 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %47 = call i32 @mb_ack_irq(%struct.cx18* %45, %struct.cx18_in_work_order* %46)
  br label %48

48:                                               ; preds = %44, %37
  store i32 -1, i32* %3, align 4
  br label %74

49:                                               ; preds = %33
  %50 = load %struct.cx18*, %struct.cx18** %4, align 8
  %51 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %52 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cx18*, %struct.cx18** %4, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @cx18_memcpy_fromio(%struct.cx18* %50, i32 %53, i64 %58, i32 %61)
  %63 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %64 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CX18_F_EWO_MB_STALE, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %49
  %70 = load %struct.cx18*, %struct.cx18** %4, align 8
  %71 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %72 = call i32 @mb_ack_irq(%struct.cx18* %70, %struct.cx18_in_work_order* %71)
  br label %73

73:                                               ; preds = %69, %49
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mb_ack_irq(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i32 @cx18_memcpy_fromio(%struct.cx18*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
