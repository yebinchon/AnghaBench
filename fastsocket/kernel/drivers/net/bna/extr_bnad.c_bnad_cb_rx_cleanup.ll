; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_rx_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_rx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rx = type { i64 }
%struct.bnad_rx_info = type { i32, %struct.bnad_rx_ctrl* }
%struct.bnad_rx_ctrl = type { %struct.bna_ccb* }
%struct.bna_ccb = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@BNAD_MAX_RXP_PER_RX = common dso_local global i32 0, align 4
@BNAD_RXQ_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rx*)* @bnad_cb_rx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cb_rx_cleanup(%struct.bnad* %0, %struct.bna_rx* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rx*, align 8
  %5 = alloca %struct.bnad_rx_info*, align 8
  %6 = alloca %struct.bna_ccb*, align 8
  %7 = alloca %struct.bnad_rx_ctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rx* %1, %struct.bna_rx** %4, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %4, align 8
  %10 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bnad_rx_info*
  store %struct.bnad_rx_info* %12, %struct.bnad_rx_info** %5, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %55, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BNAD_MAX_RXP_PER_RX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %19 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %18, i32 0, i32 1
  %20 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %20, i64 %22
  store %struct.bnad_rx_ctrl* %23, %struct.bnad_rx_ctrl** %7, align 8
  %24 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %7, align 8
  %25 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %24, i32 0, i32 0
  %26 = load %struct.bna_ccb*, %struct.bna_ccb** %25, align 8
  store %struct.bna_ccb* %26, %struct.bna_ccb** %6, align 8
  %27 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %28 = icmp ne %struct.bna_ccb* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %55

30:                                               ; preds = %17
  %31 = load i32, i32* @BNAD_RXQ_STARTED, align 4
  %32 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %33 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %31, i32* %37)
  %39 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %40 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %30
  %46 = load i32, i32* @BNAD_RXQ_STARTED, align 4
  %47 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %48 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %46, i32* %52)
  br label %54

54:                                               ; preds = %45, %30
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load %struct.bnad*, %struct.bnad** %3, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %63 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %62, i32 0, i32 0
  %64 = call i32 @queue_work(i32 %61, i32* %63)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
