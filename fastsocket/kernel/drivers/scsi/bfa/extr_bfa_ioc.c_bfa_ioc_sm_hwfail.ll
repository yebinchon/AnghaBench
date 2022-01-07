; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_hwfail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_hwfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32, i32)* }

@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32)* @bfa_ioc_sm_hwfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_hwfail(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfa_ioc_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %35 [
    i32 129, label %9
    i32 130, label %20
    i32 131, label %30
    i32 128, label %34
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %19 = call i32 %14(i32 %17, i32 %18)
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %32 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %33 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %31, i32 %32)
  br label %39

34:                                               ; preds = %2
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %34, %30, %20, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
