; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_read_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_read_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fru_s = type { i64, %struct.TYPE_2__, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_fru_read_req_s = type { i32, i32, i8*, i8* }

@BFA_FRU_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_FRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_fru_read_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fru_read_send(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fru_s*, align 8
  %6 = alloca %struct.bfi_fru_read_req_s*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_fru_s*
  store %struct.bfa_fru_s* %9, %struct.bfa_fru_s** %5, align 8
  %10 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfi_fru_read_req_s*
  store %struct.bfi_fru_read_req_s* %14, %struct.bfi_fru_read_req_s** %6, align 8
  %15 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i8* @cpu_to_be32(i64 %21)
  %23 = load %struct.bfi_fru_read_req_s*, %struct.bfi_fru_read_req_s** %6, align 8
  %24 = getelementptr inbounds %struct.bfi_fru_read_req_s, %struct.bfi_fru_read_req_s* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BFA_FRU_DMA_BUF_SZ, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @BFA_FRU_DMA_BUF_SZ, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @cpu_to_be32(i64 %38)
  %40 = load %struct.bfi_fru_read_req_s*, %struct.bfi_fru_read_req_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfi_fru_read_req_s, %struct.bfi_fru_read_req_s* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bfi_fru_read_req_s*, %struct.bfi_fru_read_req_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfi_fru_read_req_s, %struct.bfi_fru_read_req_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BFI_MC_FRU, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bfa_ioc_portid(i32 %49)
  %51 = call i32 @bfi_h2i_set(i32 %44, i32 %45, i32 %46, i32 %50)
  %52 = load %struct.bfi_fru_read_req_s*, %struct.bfi_fru_read_req_s** %6, align 8
  %53 = getelementptr inbounds %struct.bfi_fru_read_req_s, %struct.bfi_fru_read_req_s* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bfa_alen_set(i32* %53, i64 %54, i32 %57)
  %59 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %63 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %62, i32 0, i32 1
  %64 = call i32 @bfa_ioc_mbox_queue(i32 %61, %struct.TYPE_2__* %63)
  ret void
}

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i64, i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
