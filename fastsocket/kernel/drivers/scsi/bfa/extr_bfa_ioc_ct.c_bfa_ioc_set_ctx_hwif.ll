; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_set_ctx_hwif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_set_ctx_hwif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }
%struct.bfa_ioc_hwif_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bfa_ioc_ct_firmware_lock = common dso_local global i32 0, align 4
@bfa_ioc_ct_firmware_unlock = common dso_local global i32 0, align 4
@bfa_ioc_ct_notify_fail = common dso_local global i32 0, align 4
@bfa_ioc_ct_ownership_reset = common dso_local global i32 0, align 4
@bfa_ioc_ct_sync_start = common dso_local global i32 0, align 4
@bfa_ioc_ct_sync_join = common dso_local global i32 0, align 4
@bfa_ioc_ct_sync_leave = common dso_local global i32 0, align 4
@bfa_ioc_ct_sync_ack = common dso_local global i32 0, align 4
@bfa_ioc_ct_sync_complete = common dso_local global i32 0, align 4
@bfa_ioc_ct_set_cur_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_ct_get_cur_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_ct_set_alt_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_ct_get_alt_ioc_fwstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, %struct.bfa_ioc_hwif_s*)* @bfa_ioc_set_ctx_hwif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_set_ctx_hwif(%struct.bfa_ioc_s* %0, %struct.bfa_ioc_hwif_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfa_ioc_hwif_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfa_ioc_hwif_s* %1, %struct.bfa_ioc_hwif_s** %4, align 8
  %5 = load i32, i32* @bfa_ioc_ct_firmware_lock, align 4
  %6 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %6, i32 0, i32 12
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @bfa_ioc_ct_firmware_unlock, align 4
  %9 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @bfa_ioc_ct_notify_fail, align 4
  %12 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @bfa_ioc_ct_ownership_reset, align 4
  %15 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @bfa_ioc_ct_sync_start, align 4
  %18 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @bfa_ioc_ct_sync_join, align 4
  %21 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @bfa_ioc_ct_sync_leave, align 4
  %24 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @bfa_ioc_ct_sync_ack, align 4
  %27 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @bfa_ioc_ct_sync_complete, align 4
  %30 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @bfa_ioc_ct_set_cur_ioc_fwstate, align 4
  %33 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @bfa_ioc_ct_get_cur_ioc_fwstate, align 4
  %36 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @bfa_ioc_ct_set_alt_ioc_fwstate, align 4
  %39 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @bfa_ioc_ct_get_alt_ioc_fwstate, align 4
  %42 = load %struct.bfa_ioc_hwif_s*, %struct.bfa_ioc_hwif_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfa_ioc_hwif_s, %struct.bfa_ioc_hwif_s* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
