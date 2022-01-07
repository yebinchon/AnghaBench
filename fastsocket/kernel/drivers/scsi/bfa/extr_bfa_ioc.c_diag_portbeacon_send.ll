; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_portbeacon_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_portbeacon_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bfi_diag_portbeacon_req_s = type { i32, i32, i32 }

@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_PORTBEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*, i32, i32)* @diag_portbeacon_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_portbeacon_send(%struct.bfa_diag_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_diag_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfi_diag_portbeacon_req_s*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bfi_diag_portbeacon_req_s*
  store %struct.bfi_diag_portbeacon_req_s* %13, %struct.bfi_diag_portbeacon_req_s** %7, align 8
  %14 = load %struct.bfi_diag_portbeacon_req_s*, %struct.bfi_diag_portbeacon_req_s** %7, align 8
  %15 = getelementptr inbounds %struct.bfi_diag_portbeacon_req_s, %struct.bfi_diag_portbeacon_req_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BFI_MC_DIAG, align 4
  %18 = load i32, i32* @BFI_DIAG_H2I_PORTBEACON, align 4
  %19 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_ioc_portid(i32 %21)
  %23 = call i32 @bfi_h2i_set(i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.bfi_diag_portbeacon_req_s*, %struct.bfi_diag_portbeacon_req_s** %7, align 8
  %26 = getelementptr inbounds %struct.bfi_diag_portbeacon_req_s, %struct.bfi_diag_portbeacon_req_s* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @cpu_to_be32(i32 %27)
  %29 = load %struct.bfi_diag_portbeacon_req_s*, %struct.bfi_diag_portbeacon_req_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfi_diag_portbeacon_req_s, %struct.bfi_diag_portbeacon_req_s* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @bfa_ioc_mbox_queue(i32 %33, %struct.TYPE_4__* %36)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
