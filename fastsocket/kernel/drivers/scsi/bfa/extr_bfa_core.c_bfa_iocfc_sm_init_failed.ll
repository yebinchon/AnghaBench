; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@bfa_iocfc_sm_stopping = common dso_local global i32 0, align 4
@bfa_iocfc_sm_dconf_read = common dso_local global i32 0, align 4
@bfa_iocfc_sm_stopped = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfa_iocfc_disable_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, i32)* @bfa_iocfc_sm_init_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_init_failed(%struct.bfa_iocfc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_7__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %49 [
    i32 128, label %11
    i32 132, label %15
    i32 130, label %21
    i32 131, label %25
    i32 129, label %48
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %13 = load i32, i32* @bfa_iocfc_sm_stopping, align 4
  %14 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %12, i32 %13)
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = call i32 @bfa_ioc_disable(i32* %19)
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %23 = load i32, i32* @bfa_iocfc_sm_dconf_read, align 4
  %24 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %22, i32 %23)
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %27 = load i32, i32* @bfa_iocfc_sm_stopped, align 4
  %28 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %26, i32 %27)
  %29 = load i32, i32* @BFA_STATUS_OK, align 4
  %30 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* @bfa_iocfc_disable_cb, align 4
  %44 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @bfa_cb_queue(%struct.TYPE_7__* %37, i32* %42, i32 %43, %struct.TYPE_7__* %46)
  br label %55

48:                                               ; preds = %2
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %48, %25, %21, %15, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s*, i32) #1

declare dso_local i32 @bfa_ioc_disable(i32*) #1

declare dso_local i32 @bfa_cb_queue(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
