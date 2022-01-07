; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_sm_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_sm_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfad_sm_operational = common dso_local global i32 0, align 4
@BFAD_CFG_PPORT_DONE = common dso_local global i32 0, align 4
@BFAD_FC4_PROBE_DONE = common dso_local global i32 0, align 4
@bfad_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_s*, i32)* @bfad_sm_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_sm_failed(%struct.bfad_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @bfa_trc(%struct.bfad_s* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %59 [
    i32 129, label %10
    i32 128, label %21
    i32 130, label %50
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = call i32 @bfad_start_ops(%struct.bfad_s* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BFA_STATUS_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %63

17:                                               ; preds = %10
  %18 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %19 = load i32, i32* @bfad_sm_operational, align 4
  %20 = call i32 @bfa_sm_set_state(%struct.bfad_s* %18, i32 %19)
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFAD_CFG_PPORT_DONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = call i32 @bfad_uncfg_pport(%struct.bfad_s* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BFAD_FC4_PROBE_DONE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %40 = call i32 @bfad_im_probe_undo(%struct.bfad_s* %39)
  %41 = load i32, i32* @BFAD_FC4_PROBE_DONE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %49 = call i32 @bfad_stop(%struct.bfad_s* %48)
  br label %63

50:                                               ; preds = %2
  %51 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %52 = load i32, i32* @bfad_sm_uninit, align 4
  %53 = call i32 @bfa_sm_set_state(%struct.bfad_s* %51, i32 %52)
  %54 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %55 = call i32 @bfad_remove_intr(%struct.bfad_s* %54)
  %56 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 1
  %58 = call i32 @del_timer_sync(i32* %57)
  br label %63

59:                                               ; preds = %2
  %60 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @bfa_sm_fault(%struct.bfad_s* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %50, %47, %17, %16
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfad_start_ops(%struct.bfad_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfad_uncfg_pport(%struct.bfad_s*) #1

declare dso_local i32 @bfad_im_probe_undo(%struct.bfad_s*) #1

declare dso_local i32 @bfad_stop(%struct.bfad_s*) #1

declare dso_local i32 @bfad_remove_intr(%struct.bfad_s*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
