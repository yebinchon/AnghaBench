; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_stopping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@bfa_iocfc_sm_stopped = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfa_iocfc_stop_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, i32)* @bfa_iocfc_sm_stopping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_stopping(%struct.bfa_iocfc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_9__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %43 [
    i32 129, label %11
    i32 128, label %42
    i32 130, label %42
    i32 131, label %42
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = call i32 @bfa_isr_disable(%struct.TYPE_9__* %14)
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i32 @bfa_iocfc_disable_submod(%struct.TYPE_9__* %18)
  %20 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %21 = load i32, i32* @bfa_iocfc_sm_stopped, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %20, i32 %21)
  %23 = load i32, i32* @BFA_STATUS_OK, align 4
  %24 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* @bfa_iocfc_stop_cb, align 4
  %38 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32 @bfa_cb_queue(%struct.TYPE_9__* %31, i32* %36, i32 %37, %struct.TYPE_9__* %40)
  br label %49

42:                                               ; preds = %2, %2, %2
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @bfa_sm_fault(%struct.TYPE_9__* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %42, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfa_isr_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @bfa_iocfc_disable_submod(%struct.TYPE_9__*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s*, i32) #1

declare dso_local i32 @bfa_cb_queue(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
