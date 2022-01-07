; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_write_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_write_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_phy_s = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_phy_write_req_s = type { i32, i32, i32, i8*, i8*, i32 }

@BFA_PHY_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_PHY = common dso_local global i32 0, align 4
@BFI_PHY_H2I_WRITE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_phy_write_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_phy_write_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_phy_s*, align 8
  %4 = alloca %struct.bfi_phy_write_req_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.bfa_phy_s*
  store %struct.bfa_phy_s* %11, %struct.bfa_phy_s** %3, align 8
  %12 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfi_phy_write_req_s*
  store %struct.bfi_phy_write_req_s* %16, %struct.bfi_phy_write_req_s** %4, align 8
  %17 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BFA_PHY_DMA_BUF_SZ, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  br label %43

41:                                               ; preds = %1
  %42 = load i64, i64* @BFA_PHY_DMA_BUF_SZ, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i64 [ %40, %37 ], [ %42, %41 ]
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %61 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BFI_MC_PHY, align 4
  %64 = load i32, i32* @BFI_PHY_H2I_WRITE_REQ, align 4
  %65 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bfa_ioc_portid(i32 %67)
  %69 = call i32 @bfi_h2i_set(i32 %62, i32 %63, i32 %64, i32 %68)
  %70 = load %struct.bfi_phy_write_req_s*, %struct.bfi_phy_write_req_s** %4, align 8
  %71 = getelementptr inbounds %struct.bfi_phy_write_req_s, %struct.bfi_phy_write_req_s* %70, i32 0, i32 1
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @bfa_alen_set(i32* %71, i32 %72, i32 %75)
  %77 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %6, align 8
  %86 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %107, %43
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cpu_to_be16(i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %112 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %115 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %114, i32 0, i32 4
  %116 = call i32 @bfa_ioc_mbox_queue(i32 %113, %struct.TYPE_2__* %115)
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %120 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %125 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
