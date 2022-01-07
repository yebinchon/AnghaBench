; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dconf_mod_s = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IOCFC_E_DCONF_DONE = common dso_local global i32 0, align 4
@bfa_dconf_timer = common dso_local global i32 0, align 4
@BFA_DCONF_UPDATE_TOV = common dso_local global i32 0, align 4
@BFA_FLASH_PART_DRV = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_sm_uninit(%struct.bfa_dconf_mod_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dconf_mod_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bfa_dconf_mod_s* %0, %struct.bfa_dconf_mod_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bfa_trc(%struct.TYPE_8__* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %82 [
    i32 130, label %12
    i32 132, label %74
    i32 129, label %81
    i32 128, label %81
    i32 131, label %81
  ]

12:                                               ; preds = %2
  %13 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bfa_trc(%struct.TYPE_8__* %20, i32 %23)
  %25 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* @IOCFC_E_DCONF_DONE, align 4
  %30 = call i32 @bfa_fsm_send_event(i32* %28, i32 %29)
  br label %88

31:                                               ; preds = %12
  %32 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %32, void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_flash_read)
  %34 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %37, i32 0, i32 2
  %39 = load i32, i32* @bfa_dconf_timer, align 4
  %40 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %41 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %42 = mul nsw i32 2, %41
  %43 = call i32 @bfa_timer_start(%struct.TYPE_8__* %36, i32* %38, i32 %39, %struct.bfa_dconf_mod_s* %40, i32 %42)
  %44 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @BFA_FLASH(%struct.TYPE_8__* %46)
  %48 = load i32, i32* @BFA_FLASH_PART_DRV, align 4
  %49 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @bfa_flash_read_part(i32 %47, i32 %48, i32 %51, i32 %54, i32 4, i32 0, i32 (%struct.TYPE_8__*, i32)* @bfa_dconf_init_cb, %struct.TYPE_8__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BFA_STATUS_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %31
  %63 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %63, i32 0, i32 2
  %65 = call i32 @bfa_timer_stop(i32* %64)
  %66 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %70 = call i32 @bfa_dconf_init_cb(%struct.TYPE_8__* %68, i32 %69)
  %71 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %72 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %71, void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_uninit)
  br label %88

73:                                               ; preds = %31
  br label %88

74:                                               ; preds = %2
  %75 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* @IOCFC_E_DCONF_DONE, align 4
  %80 = call i32 @bfa_fsm_send_event(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %2, %2, %2, %74
  br label %88

82:                                               ; preds = %2
  %83 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %84 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @bfa_sm_fault(%struct.TYPE_8__* %85, i32 %86)
  br label %88

88:                                               ; preds = %17, %62, %82, %81, %73
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s*, void (%struct.bfa_dconf_mod_s*, i32)*) #1

declare dso_local void @bfa_dconf_sm_flash_read(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_timer_start(%struct.TYPE_8__*, i32*, i32, %struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_flash_read_part(i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_8__*, i32)*, %struct.TYPE_8__*) #1

declare dso_local i32 @BFA_FLASH(%struct.TYPE_8__*) #1

declare dso_local i32 @bfa_dconf_init_cb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
