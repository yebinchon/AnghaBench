; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.bfa_ioc_cbfn*, i8* }
%struct.TYPE_2__ = type { %struct.bfa_ioc* }
%struct.bfa_ioc_cbfn = type { i32 }

@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@IOC_E_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_attach(%struct.bfa_ioc* %0, i8* %1, %struct.bfa_ioc_cbfn* %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfa_ioc_cbfn*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.bfa_ioc_cbfn* %2, %struct.bfa_ioc_cbfn** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = load %struct.bfa_ioc_cbfn*, %struct.bfa_ioc_cbfn** %6, align 8
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 5
  store %struct.bfa_ioc_cbfn* %10, %struct.bfa_ioc_cbfn** %12, align 8
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %17, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.bfa_ioc* %19, %struct.bfa_ioc** %22, align 8
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %24 = call i32 @bfa_ioc_mbox_attach(%struct.bfa_ioc* %23)
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %29 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %30 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %28, i32 %29)
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %32 = load i32, i32* @IOC_E_RESET, align 4
  %33 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc* %31, i32 %32)
  ret void
}

declare dso_local i32 @bfa_ioc_mbox_attach(%struct.bfa_ioc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
