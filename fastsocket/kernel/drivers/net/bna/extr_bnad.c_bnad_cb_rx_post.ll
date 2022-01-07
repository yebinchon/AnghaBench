; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_rx_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_rx_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rx = type { i64 }
%struct.bnad_rx_info = type { %struct.bnad_rx_ctrl* }
%struct.bnad_rx_ctrl = type { i32, %struct.bna_ccb* }
%struct.bna_ccb = type { %struct.bna_rcb** }
%struct.bna_rcb = type { i32 }

@BNAD_MAX_RXP_PER_RX = common dso_local global i32 0, align 4
@BNAD_MAX_RXQ_PER_RXP = common dso_local global i32 0, align 4
@BNAD_RXQ_STARTED = common dso_local global i32 0, align 4
@BNAD_RXQ_POST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rx*)* @bnad_cb_rx_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cb_rx_post(%struct.bnad* %0, %struct.bna_rx* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rx*, align 8
  %5 = alloca %struct.bnad_rx_info*, align 8
  %6 = alloca %struct.bna_ccb*, align 8
  %7 = alloca %struct.bna_rcb*, align 8
  %8 = alloca %struct.bnad_rx_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rx* %1, %struct.bna_rx** %4, align 8
  %11 = load %struct.bna_rx*, %struct.bna_rx** %4, align 8
  %12 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bnad_rx_info*
  store %struct.bnad_rx_info* %14, %struct.bnad_rx_info** %5, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %70, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @BNAD_MAX_RXP_PER_RX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %21 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %20, i32 0, i32 0
  %22 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %22, i64 %24
  store %struct.bnad_rx_ctrl* %25, %struct.bnad_rx_ctrl** %8, align 8
  %26 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %8, align 8
  %27 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %26, i32 0, i32 1
  %28 = load %struct.bna_ccb*, %struct.bna_ccb** %27, align 8
  store %struct.bna_ccb* %28, %struct.bna_ccb** %6, align 8
  %29 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %30 = icmp ne %struct.bna_ccb* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %70

32:                                               ; preds = %19
  %33 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %8, align 8
  %34 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %33, i32 0, i32 0
  %35 = call i32 @napi_enable(i32* %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %66, %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BNAD_MAX_RXQ_PER_RXP, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.bna_ccb*, %struct.bna_ccb** %6, align 8
  %42 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %41, i32 0, i32 0
  %43 = load %struct.bna_rcb**, %struct.bna_rcb*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %43, i64 %45
  %47 = load %struct.bna_rcb*, %struct.bna_rcb** %46, align 8
  store %struct.bna_rcb* %47, %struct.bna_rcb** %7, align 8
  %48 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %49 = icmp ne %struct.bna_rcb* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %66

51:                                               ; preds = %40
  %52 = load %struct.bnad*, %struct.bnad** %3, align 8
  %53 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %54 = call i32 @bnad_rxq_alloc_init(%struct.bnad* %52, %struct.bna_rcb* %53)
  %55 = load i32, i32* @BNAD_RXQ_STARTED, align 4
  %56 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %57 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @BNAD_RXQ_POST_OK, align 4
  %60 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %61 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.bnad*, %struct.bnad** %3, align 8
  %64 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %65 = call i32 @bnad_rxq_post(%struct.bnad* %63, %struct.bna_rcb* %64)
  br label %66

66:                                               ; preds = %51, %50
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %36

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %15

73:                                               ; preds = %15
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @bnad_rxq_alloc_init(%struct.bnad*, %struct.bna_rcb*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnad_rxq_post(%struct.bnad*, %struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
