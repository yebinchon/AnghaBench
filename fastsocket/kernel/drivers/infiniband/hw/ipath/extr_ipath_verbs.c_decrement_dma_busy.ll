; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_decrement_dma_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_decrement_dma_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i64, i64, i32, i32, i32, i32 }

@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_FLUSH_SEND = common dso_local global i32 0, align 4
@IPATH_S_WAIT_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp*)* @decrement_dma_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decrement_dma_busy(%struct.ipath_qp* %0) #0 {
  %2 = alloca %struct.ipath_qp*, align 8
  %3 = alloca i64, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %2, align 8
  %4 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %4, i32 0, i32 6
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %9, i32 0, i32 5
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32*, i32** @ib_ipath_state_ops, align 8
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPATH_FLUSH_SEND, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %8
  %23 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %22, %8
  %31 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IPATH_S_WAIT_DMA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %22
  %38 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %39 = call i32 @ipath_schedule_send(%struct.ipath_qp* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %42 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %41, i32 0, i32 5
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %46 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %45, i32 0, i32 4
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %40, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
