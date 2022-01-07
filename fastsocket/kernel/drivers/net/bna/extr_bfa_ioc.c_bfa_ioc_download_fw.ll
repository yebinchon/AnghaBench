; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_download_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@BFI_FWBOOT_DEVMODE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_ENV_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i64, i64)* @bfa_ioc_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_download_fw(%struct.bfa_ioc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %14 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %13)
  %15 = load i64, i64* %10, align 8
  %16 = call i64* @bfa_cb_image_get_chunk(i32 %14, i64 %15)
  store i64* %16, i64** %7, align 8
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %17, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @writel(i64 %20, i64 %24)
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %75, %3
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %29 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %28)
  %30 = call i64 @bfa_cb_image_get_size(i32 %29)
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %41 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %40)
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %42)
  %44 = call i64* @bfa_cb_image_get_chunk(i32 %41, i64 %43)
  store i64* %44, i64** %7, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64 %47)
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @swab32(i64 %50)
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %53 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i64 %51, i64 %57)
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 8
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @PSS_SMEM_PGOFF(i64 %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %45
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %70 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @writel(i64 %68, i64 %72)
  br label %74

74:                                               ; preds = %65, %45
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %80 = call i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %79, i64 0)
  %81 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %82 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @writel(i64 %80, i64 %84)
  %86 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %87 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %90 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %93 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %96 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @BFI_FWBOOT_DEVMODE(i32 %88, i32 %91, i32 %94, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %101 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BFI_FWBOOT_DEVMODE_OFF, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i64 %99, i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %109 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BFI_FWBOOT_TYPE_OFF, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i64 %107, i64 %113)
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %117 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BFI_FWBOOT_ENV_OFF, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i64 %115, i64 %121)
  ret void
}

declare dso_local i64* @bfa_cb_image_get_chunk(i32, i64) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @bfa_cb_image_get_size(i32) #1

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_NO(i64) #1

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_ADDR(i64) #1

declare dso_local i64 @swab32(i64) #1

declare dso_local i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64) #1

declare dso_local i64 @PSS_SMEM_PGOFF(i64) #1

declare dso_local i64 @BFI_FWBOOT_DEVMODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
