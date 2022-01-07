; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_ioceth_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_ioceth_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ioceth = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bna_ioceth_sm_ready = common dso_local global i64 0, align 8
@bna_ioceth_sm_stopped = common dso_local global i64 0, align 8
@IOCETH_E_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_ioceth_enable(%struct.bna_ioceth* %0) #0 {
  %2 = alloca %struct.bna_ioceth*, align 8
  store %struct.bna_ioceth* %0, %struct.bna_ioceth** %2, align 8
  %3 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %4 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @bna_ioceth_sm_ready, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %10 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bnad_cb_ioceth_ready(i32 %13)
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %17 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bna_ioceth_sm_stopped, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %23 = load i32, i32* @IOCETH_E_ENABLE, align 4
  %24 = call i32 @bfa_fsm_send_event(%struct.bna_ioceth* %22, i32 %23)
  br label %25

25:                                               ; preds = %8, %21, %15
  ret void
}

declare dso_local i32 @bnad_cb_ioceth_ready(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ioceth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
