; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_read_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_read_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_phy_s = type { i64, %struct.TYPE_2__, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_phy_read_req_s = type { i32, i32, i8*, i8*, i32 }

@BFA_PHY_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_PHY = common dso_local global i32 0, align 4
@BFI_PHY_H2I_READ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_phy_read_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_phy_read_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_phy_s*, align 8
  %4 = alloca %struct.bfi_phy_read_req_s*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bfa_phy_s*
  store %struct.bfa_phy_s* %7, %struct.bfa_phy_s** %3, align 8
  %8 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bfi_phy_read_req_s*
  store %struct.bfi_phy_read_req_s* %12, %struct.bfi_phy_read_req_s** %4, align 8
  %13 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bfi_phy_read_req_s*, %struct.bfi_phy_read_req_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfi_phy_read_req_s, %struct.bfi_phy_read_req_s* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i8* @cpu_to_be32(i64 %24)
  %26 = load %struct.bfi_phy_read_req_s*, %struct.bfi_phy_read_req_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfi_phy_read_req_s, %struct.bfi_phy_read_req_s* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BFA_PHY_DMA_BUF_SZ, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %39

37:                                               ; preds = %1
  %38 = load i64, i64* @BFA_PHY_DMA_BUF_SZ, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i64 [ %36, %33 ], [ %38, %37 ]
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i8* @cpu_to_be32(i64 %41)
  %43 = load %struct.bfi_phy_read_req_s*, %struct.bfi_phy_read_req_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfi_phy_read_req_s, %struct.bfi_phy_read_req_s* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bfi_phy_read_req_s*, %struct.bfi_phy_read_req_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_phy_read_req_s, %struct.bfi_phy_read_req_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BFI_MC_PHY, align 4
  %49 = load i32, i32* @BFI_PHY_H2I_READ_REQ, align 4
  %50 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bfa_ioc_portid(i32 %52)
  %54 = call i32 @bfi_h2i_set(i32 %47, i32 %48, i32 %49, i32 %53)
  %55 = load %struct.bfi_phy_read_req_s*, %struct.bfi_phy_read_req_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfi_phy_read_req_s, %struct.bfi_phy_read_req_s* %55, i32 0, i32 0
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bfa_alen_set(i32* %56, i64 %57, i32 %60)
  %62 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %65, i32 0, i32 1
  %67 = call i32 @bfa_ioc_mbox_queue(i32 %64, %struct.TYPE_2__* %66)
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
