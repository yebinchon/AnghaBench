; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_iocdown_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_iocdown_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dconf_mod_s = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@bfa_dconf_timer = common dso_local global i32 0, align 4
@BFA_DCONF_UPDATE_TOV = common dso_local global i32 0, align 4
@bfa_dconf_sm_dirty = common dso_local global i32 0, align 4
@bfa_dconf_sm_uninit = common dso_local global i32 0, align 4
@IOCFC_E_DCONF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_iocdown_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_sm_iocdown_dirty(%struct.bfa_dconf_mod_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dconf_mod_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dconf_mod_s* %0, %struct.bfa_dconf_mod_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_4__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 130, label %24
    i32 128, label %34
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %15, i32 0, i32 1
  %17 = load i32, i32* @bfa_dconf_timer, align 4
  %18 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %19 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %20 = call i32 @bfa_timer_start(%struct.TYPE_4__* %14, i32* %16, i32 %17, %struct.bfa_dconf_mod_s* %18, i32 %19)
  %21 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %22 = load i32, i32* @bfa_dconf_sm_dirty, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %21, i32 %22)
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %26 = load i32, i32* @bfa_dconf_sm_uninit, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %25, i32 %26)
  %28 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* @IOCFC_E_DCONF_DONE, align 4
  %33 = call i32 @bfa_fsm_send_event(i32* %31, i32 %32)
  br label %41

34:                                               ; preds = %2
  br label %41

35:                                               ; preds = %2
  %36 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bfa_sm_fault(%struct.TYPE_4__* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %34, %24, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bfa_timer_start(%struct.TYPE_4__*, i32*, i32, %struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
