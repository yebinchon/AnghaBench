; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_msix_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_msix_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ccb = type { i32, i64 }
%struct.bnad_rx_ctrl = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnad_msix_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_msix_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bna_ccb*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.bna_ccb*
  store %struct.bna_ccb* %7, %struct.bna_ccb** %5, align 8
  %8 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %9 = icmp ne %struct.bna_ccb* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %12 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bnad_rx_ctrl*
  %15 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %19 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %22 = call i32 @bnad_netif_rx_schedule_poll(i32 %20, %struct.bna_ccb* %21)
  br label %23

23:                                               ; preds = %10, %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

declare dso_local i32 @bnad_netif_rx_schedule_poll(i32, %struct.bna_ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
