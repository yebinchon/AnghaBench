; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_write_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_write_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i64, i64, i64, i64, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_flash_write_req = type { i32, i32, i32, i8*, i8*, i32, i8* }

@BFA_FLASH_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_FLASH = common dso_local global i32 0, align 4
@BFI_FLASH_H2I_WRITE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_flash*)* @bfa_flash_write_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_write_send(%struct.bfa_flash* %0) #0 {
  %2 = alloca %struct.bfa_flash*, align 8
  %3 = alloca %struct.bfi_flash_write_req*, align 8
  %4 = alloca i64, align 8
  store %struct.bfa_flash* %0, %struct.bfa_flash** %2, align 8
  %5 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bfi_flash_write_req*
  store %struct.bfi_flash_write_req* %9, %struct.bfi_flash_write_req** %3, align 8
  %10 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i8* @be32_to_cpu(i64 %12)
  %14 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %15 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %20 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i8* @be32_to_cpu(i64 %27)
  %29 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %30 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BFA_FLASH_DMA_BUF_SZ, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  br label %42

40:                                               ; preds = %1
  %41 = load i64, i64* @BFA_FLASH_DMA_BUF_SZ, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i8* @be32_to_cpu(i64 %44)
  %46 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %47 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %50 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %56 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %58 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BFI_MC_FLASH, align 4
  %61 = load i32, i32* @BFI_FLASH_H2I_WRITE_REQ, align 4
  %62 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bfa_ioc_portid(i32 %64)
  %66 = call i32 @bfi_h2i_set(i32 %59, i32 %60, i32 %61, i32 %65)
  %67 = load %struct.bfi_flash_write_req*, %struct.bfi_flash_write_req** %3, align 8
  %68 = getelementptr inbounds %struct.bfi_flash_write_req, %struct.bfi_flash_write_req* %67, i32 0, i32 1
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %71 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bfa_alen_set(i32* %68, i64 %69, i32 %72)
  %74 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %75 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %78 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %81 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @memcpy(i32 %76, i64 %83, i64 %84)
  %86 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %87 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %90 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %89, i32 0, i32 5
  %91 = call i32 @bfa_nw_ioc_mbox_queue(i32 %88, %struct.TYPE_2__* %90, i32* null, i32* null)
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %94 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %99 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
