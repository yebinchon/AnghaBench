; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mbox_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mbox_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_mbox_handler(%struct.bna* %0, i32 %1) #0 {
  %3 = alloca %struct.bna*, align 8
  %4 = alloca i32, align 4
  store %struct.bna* %0, %struct.bna** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bna*, %struct.bna** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @BNA_IS_ERR_INTR(%struct.bna* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bna*, %struct.bna** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @bna_err_handler(%struct.bna* %10, i32 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.bna*, %struct.bna** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @BNA_IS_MBOX_INTR(%struct.bna* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.bna*, %struct.bna** %3, align 8
  %20 = getelementptr inbounds %struct.bna, %struct.bna* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @bfa_nw_ioc_mbox_isr(i32* %21)
  br label %23

23:                                               ; preds = %9, %18, %13
  ret void
}

declare dso_local i64 @BNA_IS_ERR_INTR(%struct.bna*, i32) #1

declare dso_local i32 @bna_err_handler(%struct.bna*, i32) #1

declare dso_local i64 @BNA_IS_MBOX_INTR(%struct.bna*, i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_isr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
