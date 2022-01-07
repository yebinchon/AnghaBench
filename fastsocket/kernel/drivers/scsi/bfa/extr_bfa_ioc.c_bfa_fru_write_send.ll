; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_write_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_write_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fru_s = type { i64, i64, i64, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_fru_write_req_s = type { i32, i32, i32, i32, i8*, i8* }

@BFA_FRU_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_FRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_fru_write_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fru_write_send(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fru_s*, align 8
  %6 = alloca %struct.bfi_fru_write_req_s*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_fru_s*
  store %struct.bfa_fru_s* %9, %struct.bfa_fru_s** %5, align 8
  %10 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfi_fru_write_req_s*
  store %struct.bfi_fru_write_req_s* %14, %struct.bfi_fru_write_req_s** %6, align 8
  %15 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i8* @cpu_to_be32(i64 %21)
  %23 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %24 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BFA_FRU_DMA_BUF_SZ, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %31, i32 0, i32 2
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
  %40 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %63 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %64 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %66 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BFI_MC_FRU, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %71 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bfa_ioc_portid(i32 %72)
  %74 = call i32 @bfi_h2i_set(i32 %67, i32 %68, i32 %69, i32 %73)
  %75 = load %struct.bfi_fru_write_req_s*, %struct.bfi_fru_write_req_s** %6, align 8
  %76 = getelementptr inbounds %struct.bfi_fru_write_req_s, %struct.bfi_fru_write_req_s* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %79 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bfa_alen_set(i32* %76, i64 %77, i32 %80)
  %82 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %83 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %86 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %89 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @memcpy(i32 %84, i64 %91, i64 %92)
  %94 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %95 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %98 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %97, i32 0, i32 4
  %99 = call i32 @bfa_ioc_mbox_queue(i32 %96, %struct.TYPE_2__* %98)
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %107 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
