; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_process_faa_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_process_faa_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_5__, %struct.bfa_iocfc_s }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bfa_iocfc_s = type { %struct.bfi_iocfc_cfgrsp_s* }
%struct.bfi_iocfc_cfgrsp_s = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bfi_faa_addr_msg_s = type { i32, i32 }

@IOCFC_E_CFG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfi_faa_addr_msg_s*)* @bfa_iocfc_process_faa_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_process_faa_addr(%struct.bfa_s* %0, %struct.bfi_faa_addr_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_faa_addr_msg_s*, align 8
  %5 = alloca %struct.bfa_iocfc_s*, align 8
  %6 = alloca %struct.bfi_iocfc_cfgrsp_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_faa_addr_msg_s* %1, %struct.bfi_faa_addr_msg_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %7, i32 0, i32 1
  store %struct.bfa_iocfc_s* %8, %struct.bfa_iocfc_s** %5, align 8
  %9 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %9, i32 0, i32 0
  %11 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %10, align 8
  store %struct.bfi_iocfc_cfgrsp_s* %11, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %12 = load %struct.bfi_faa_addr_msg_s*, %struct.bfi_faa_addr_msg_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, %struct.bfi_faa_addr_msg_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.bfi_faa_addr_msg_s*, %struct.bfi_faa_addr_msg_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, %struct.bfi_faa_addr_msg_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.bfi_faa_addr_msg_s*, %struct.bfi_faa_addr_msg_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, %struct.bfi_faa_addr_msg_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  %32 = load %struct.bfi_faa_addr_msg_s*, %struct.bfi_faa_addr_msg_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, %struct.bfi_faa_addr_msg_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %41 = load i32, i32* @IOCFC_E_CFG_DONE, align 4
  %42 = call i32 @bfa_fsm_send_event(%struct.bfa_iocfc_s* %40, i32 %41)
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_iocfc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
