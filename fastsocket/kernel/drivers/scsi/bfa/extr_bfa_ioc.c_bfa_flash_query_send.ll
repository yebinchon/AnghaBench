; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_query_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_query_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash_s = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_flash_query_req_s = type { i32, i32 }

@BFI_MC_FLASH = common dso_local global i32 0, align 4
@BFI_FLASH_H2I_QUERY_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_flash_query_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_query_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_flash_s*, align 8
  %4 = alloca %struct.bfi_flash_query_req_s*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_flash_s*
  store %struct.bfa_flash_s* %6, %struct.bfa_flash_s** %3, align 8
  %7 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bfi_flash_query_req_s*
  store %struct.bfi_flash_query_req_s* %11, %struct.bfi_flash_query_req_s** %4, align 8
  %12 = load %struct.bfi_flash_query_req_s*, %struct.bfi_flash_query_req_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_flash_query_req_s, %struct.bfi_flash_query_req_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BFI_MC_FLASH, align 4
  %16 = load i32, i32* @BFI_FLASH_H2I_QUERY_REQ, align 4
  %17 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bfa_ioc_portid(i32 %19)
  %21 = call i32 @bfi_h2i_set(i32 %14, i32 %15, i32 %16, i32 %20)
  %22 = load %struct.bfi_flash_query_req_s*, %struct.bfi_flash_query_req_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_flash_query_req_s, %struct.bfi_flash_query_req_s* %22, i32 0, i32 0
  %24 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_alen_set(i32* %23, i32 4, i32 %26)
  %28 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %31, i32 0, i32 0
  %33 = call i32 @bfa_ioc_mbox_queue(i32 %30, %struct.TYPE_2__* %32)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
