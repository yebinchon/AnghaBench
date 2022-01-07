; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_iocpf_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_iocpf_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@iocpf_sm_table = common dso_local global i32 0, align 4
@BFA_IOCPF_HWINIT = common dso_local global i32 0, align 4
@IOCPF_E_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_iocpf_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_ioc*
  store %struct.bfa_ioc* %6, %struct.bfa_ioc** %3, align 8
  %7 = load i32, i32* @iocpf_sm_table, align 4
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfa_sm_to_state(i32 %7, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BFA_IOCPF_HWINIT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %18 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %20, i32 0, i32 0
  %22 = load i32, i32* @IOCPF_E_TIMEOUT, align 4
  %23 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @bfa_sm_to_state(i32, i32) #1

declare dso_local i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
