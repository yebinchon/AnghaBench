; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_fwping_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_fwping_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bfi_diag_fwping_req_s = type { i32, i32, i32, i32 }

@BFI_DIAG_DMA_BUF_SZ = common dso_local global i32 0, align 4
@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_FWPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*)* @diag_fwping_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_fwping_send(%struct.bfa_diag_s* %0) #0 {
  %2 = alloca %struct.bfa_diag_s*, align 8
  %3 = alloca %struct.bfi_diag_fwping_req_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %2, align 8
  %5 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %6 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_diag_s* %5, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BFI_DIAG_DMA_BUF_SZ, align 4
  %14 = ashr i32 %13, 2
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %20, i32* %28, align 4
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.bfi_diag_fwping_req_s*
  store %struct.bfi_diag_fwping_req_s* %38, %struct.bfi_diag_fwping_req_s** %3, align 8
  %39 = load %struct.bfi_diag_fwping_req_s*, %struct.bfi_diag_fwping_req_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfi_diag_fwping_req_s, %struct.bfi_diag_fwping_req_s* %39, i32 0, i32 3
  %41 = load i32, i32* @BFI_DIAG_DMA_BUF_SZ, align 4
  %42 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %43 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bfa_alen_set(i32* %40, i32 %41, i32 %45)
  %47 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cpu_to_be32(i32 %50)
  %52 = load %struct.bfi_diag_fwping_req_s*, %struct.bfi_diag_fwping_req_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfi_diag_fwping_req_s, %struct.bfi_diag_fwping_req_s* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %55 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bfi_diag_fwping_req_s*, %struct.bfi_diag_fwping_req_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfi_diag_fwping_req_s, %struct.bfi_diag_fwping_req_s* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bfi_diag_fwping_req_s*, %struct.bfi_diag_fwping_req_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfi_diag_fwping_req_s, %struct.bfi_diag_fwping_req_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BFI_MC_DIAG, align 4
  %64 = load i32, i32* @BFI_DIAG_H2I_FWPING, align 4
  %65 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %66 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bfa_ioc_portid(i32 %67)
  %69 = call i32 @bfi_h2i_set(i32 %62, i32 %63, i32 %64, i32 %68)
  %70 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %71 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %74 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = call i32 @bfa_ioc_mbox_queue(i32 %72, %struct.TYPE_4__* %75)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
