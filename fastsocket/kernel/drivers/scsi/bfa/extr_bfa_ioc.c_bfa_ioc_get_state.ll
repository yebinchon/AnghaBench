; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ioc_sm_table = common dso_local global i32 0, align 4
@BFA_IOC_ENABLING = common dso_local global i32 0, align 4
@BFA_IOC_FAIL = common dso_local global i32 0, align 4
@BFA_IOC_INITFAIL = common dso_local global i32 0, align 4
@iocpf_sm_table = common dso_local global i32 0, align 4
@BFA_IOC_SEMWAIT = common dso_local global i32 0, align 4
@BFA_IOC_HWINIT = common dso_local global i32 0, align 4
@BFA_IOC_FWMISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_ioc_get_state(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %5 = load i32, i32* @ioc_sm_table, align 4
  %6 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bfa_sm_to_state(i32 %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BFA_IOC_ENABLING, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BFA_IOC_FAIL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BFA_IOC_INITFAIL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17, %13, %1
  %22 = load i32, i32* @iocpf_sm_table, align 4
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_sm_to_state(i32 %22, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 130, label %31
    i32 131, label %33
    i32 132, label %35
    i32 129, label %37
  ]

29:                                               ; preds = %21
  %30 = load i32, i32* @BFA_IOC_SEMWAIT, align 4
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %21
  %32 = load i32, i32* @BFA_IOC_HWINIT, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %21
  %34 = load i32, i32* @BFA_IOC_FWMISMATCH, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load i32, i32* @BFA_IOC_FAIL, align 4
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @BFA_IOC_INITFAIL, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %37, %35, %33, %31, %29
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @bfa_sm_to_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
