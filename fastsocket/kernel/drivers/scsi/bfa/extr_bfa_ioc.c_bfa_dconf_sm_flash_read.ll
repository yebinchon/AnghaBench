; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_flash_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_flash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dconf_mod_s = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@bfa_dconf_sm_ready = common dso_local global i32 0, align 4
@bfa_dconf_sm_uninit = common dso_local global i32 0, align 4
@IOCFC_E_DCONF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_flash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_sm_flash_read(%struct.bfa_dconf_mod_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dconf_mod_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dconf_mod_s* %0, %struct.bfa_dconf_mod_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %47 [
    i32 130, label %11
    i32 128, label %18
    i32 131, label %27
    i32 129, label %40
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %12, i32 0, i32 1
  %14 = call i32 @bfa_timer_stop(i32* %13)
  %15 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %16 = load i32, i32* @bfa_dconf_sm_ready, align 4
  %17 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %15, i32 %16)
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %20 = load i32, i32* @bfa_dconf_sm_ready, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %19, i32 %20)
  %22 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @bfa_ioc_suspend(i32* %25)
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %28, i32 0, i32 1
  %30 = call i32 @bfa_timer_stop(i32* %29)
  %31 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %32 = load i32, i32* @bfa_dconf_sm_uninit, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %31, i32 %32)
  %34 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* @IOCFC_E_DCONF_DONE, align 4
  %39 = call i32 @bfa_fsm_send_event(i32* %37, i32 %38)
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %41, i32 0, i32 1
  %43 = call i32 @bfa_timer_stop(i32* %42)
  %44 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %45 = load i32, i32* @bfa_dconf_sm_uninit, align 4
  %46 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %44, i32 %45)
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %40, %27, %18, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_ioc_suspend(i32*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
