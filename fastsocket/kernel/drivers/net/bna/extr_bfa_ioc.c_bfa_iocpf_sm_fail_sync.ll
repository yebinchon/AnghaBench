; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { i32, %struct.bfa_ioc* }
%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@bfa_iocpf_sm_semwait = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_fail_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fail_sync(%struct.bfa_iocpf* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  store %struct.bfa_iocpf* %0, %struct.bfa_iocpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %6, i32 0, i32 1
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %7, align 8
  store %struct.bfa_ioc* %8, %struct.bfa_ioc** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %62 [
    i32 129, label %10
    i32 128, label %49
    i32 131, label %55
    i32 130, label %61
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = call i32 @bfa_ioc_sync_ack(%struct.bfa_ioc* %11)
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %14 = call i32 @bfa_ioc_notify_fail(%struct.bfa_ioc* %13)
  %15 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %10
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %21 = call i32 @bfa_ioc_sync_leave(%struct.bfa_ioc* %20)
  %22 = load i32, i32* @BFI_IOC_FAIL, align 4
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 %22, i32 %26)
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %29 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %28)
  %30 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %31 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %32 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %30, i32 %31)
  br label %48

33:                                               ; preds = %10
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %35 = call i32 @bfa_ioc_sync_complete(%struct.bfa_ioc* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %39 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %40 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %38, i32 %39)
  br label %47

41:                                               ; preds = %33
  %42 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %43 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %42)
  %44 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %45 = load i32, i32* @bfa_iocpf_sm_semwait, align 4
  %46 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %19
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %51 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %52 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %50, i32 %51)
  %53 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %54 = call i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc* %53)
  br label %65

55:                                               ; preds = %2
  %56 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %57 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %56)
  %58 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %59 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %60 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %58, i32 %59)
  br label %65

61:                                               ; preds = %2
  br label %65

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bfa_sm_fault(i32 %63)
  br label %65

65:                                               ; preds = %62, %61, %55, %49, %48
  ret void
}

declare dso_local i32 @bfa_ioc_sync_ack(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_notify_fail(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_sync_leave(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_sync_complete(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
