; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_sm_enabling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_sm_enabling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@bfa_ioc_sm_getattr = common dso_local global i32 0, align 4
@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail = common dso_local global i32 0, align 4
@bfa_ioc_sm_hwfail = common dso_local global i32 0, align 4
@bfa_ioc_sm_disabling = common dso_local global i32 0, align 4
@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i32)* @bfa_ioc_sm_enabling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_enabling(%struct.bfa_ioc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %55 [
    i32 131, label %6
    i32 128, label %10
    i32 130, label %10
    i32 129, label %30
    i32 133, label %44
    i32 134, label %48
    i32 132, label %54
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %8 = load i32, i32* @bfa_ioc_sm_getattr, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %7, i32 %8)
  br label %58

10:                                               ; preds = %2, %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %20 = call i32 %15(i32 %18, i32 %19)
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %22 = load i32, i32* @bfa_ioc_sm_fail, align 4
  %23 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %28 = call i32 @bfa_iocpf_initfail(%struct.bfa_ioc* %27)
  br label %29

29:                                               ; preds = %26, %10
  br label %58

30:                                               ; preds = %2
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %40 = call i32 %35(i32 %38, i32 %39)
  %41 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %42 = load i32, i32* @bfa_ioc_sm_hwfail, align 4
  %43 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %41, i32 %42)
  br label %58

44:                                               ; preds = %2
  %45 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %46 = load i32, i32* @bfa_ioc_sm_disabling, align 4
  %47 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %45, i32 %46)
  br label %58

48:                                               ; preds = %2
  %49 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %50 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %51 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %49, i32 %50)
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %53 = call i32 @bfa_iocpf_stop(%struct.bfa_ioc* %52)
  br label %58

54:                                               ; preds = %2
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @bfa_sm_fault(i32 %56)
  br label %58

58:                                               ; preds = %55, %54, %48, %44, %30, %29, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_iocpf_initfail(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_iocpf_stop(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
