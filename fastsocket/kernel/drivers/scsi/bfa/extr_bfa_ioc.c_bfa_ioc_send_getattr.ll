; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_send_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_send_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_ioc_getattr_req_s = type { i32, i32 }

@BFI_MC_IOC = common dso_local global i32 0, align 4
@BFI_IOC_H2I_GETATTR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_send_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_send_getattr(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca %struct.bfi_ioc_getattr_req_s, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfi_ioc_getattr_req_s, %struct.bfi_ioc_getattr_req_s* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BFI_MC_IOC, align 4
  %7 = load i32, i32* @BFI_IOC_H2I_GETATTR_REQ, align 4
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %9 = call i32 @bfa_ioc_portid(%struct.bfa_ioc_s* %8)
  %10 = call i32 @bfi_h2i_set(i32 %5, i32 %6, i32 %7, i32 %9)
  %11 = getelementptr inbounds %struct.bfi_ioc_getattr_req_s, %struct.bfi_ioc_getattr_req_s* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bfa_dma_be_addr_set(i32 %12, i32 %16)
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %19 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s* %18, %struct.bfi_ioc_getattr_req_s* %3, i32 8)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_dma_be_addr_set(i32, i32) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s*, %struct.bfi_ioc_getattr_req_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
