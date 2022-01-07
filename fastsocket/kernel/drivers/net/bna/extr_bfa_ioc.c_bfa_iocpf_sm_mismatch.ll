; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_iocpf_sm_mismatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_iocpf_sm_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@bfa_iocpf_sm_fwcheck = common dso_local global i32 0, align 4
@bfa_iocpf_sm_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_mismatch(%struct.bfa_iocpf* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  store %struct.bfa_iocpf* %0, %struct.bfa_iocpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %6, i32 0, i32 0
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %7, align 8
  store %struct.bfa_ioc* %8, %struct.bfa_ioc** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 130, label %14
    i32 129, label %23
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %12 = load i32, i32* @bfa_iocpf_sm_fwcheck, align 4
  %13 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %11, i32 %12)
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %15, i32 0, i32 0
  %17 = call i32 @del_timer(i32* %16)
  %18 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %19 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %20 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %18, i32 %19)
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %22 = call i32 @bfa_ioc_pf_disabled(%struct.bfa_ioc* %21)
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %24, i32 0, i32 0
  %26 = call i32 @del_timer(i32* %25)
  %27 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %28 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %29 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %27, i32 %28)
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bfa_sm_fault(i32 %31)
  br label %33

33:                                               ; preds = %30, %23, %14, %10
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @bfa_ioc_pf_disabled(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
