; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_download_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BFI_FWBOOT_DEVMODE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_ENV_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i64, i64)* @bfa_ioc_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_download_fw(%struct.bfa_ioc_s* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %15 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %16 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %15)
  %17 = call i64 @bfa_cb_image_get_size(i32 %16)
  %18 = call i32 @bfa_trc(%struct.bfa_ioc_s* %14, i64 %17)
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %20 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %19)
  %21 = load i64, i64* %11, align 8
  %22 = call i64* @bfa_cb_image_get_chunk(i32 %20, i64 %21)
  store i64* %22, i64** %7, align 8
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @PSS_SMEM_PGNUM(i32 %26, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @PSS_SMEM_PGOFF(i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel(i64 %31, i32 %35)
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %85, %3
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %40 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %39)
  %41 = call i64 @bfa_cb_image_get_size(i32 %40)
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %37
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %52 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %51)
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %53)
  %55 = call i64* @bfa_cb_image_get_chunk(i32 %52, i64 %54)
  store i64* %55, i64** %7, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %58 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64 %63)
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cpu_to_le32(i64 %66)
  %68 = call i32 @bfa_mem_write(i32 %60, i64 %61, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 8
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @PSS_SMEM_PGOFF(i64 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %56
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writel(i64 %78, i32 %82)
  br label %84

84:                                               ; preds = %75, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %37

88:                                               ; preds = %37
  %89 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @PSS_SMEM_PGNUM(i32 %92, i64 0)
  %94 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @writel(i64 %93, i32 %97)
  %99 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %100 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %103 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %106 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %109 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @BFI_FWBOOT_DEVMODE(i32 %101, i32 %104, i32 %107, i32 %110)
  store i64 %111, i64* %13, align 8
  %112 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %113 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @BFI_FWBOOT_DEVMODE_OFF, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @swab32(i64 %117)
  %119 = call i32 @bfa_mem_write(i32 %115, i64 %116, i32 %118)
  %120 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %121 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* @BFI_FWBOOT_TYPE_OFF, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @swab32(i64 %125)
  %127 = call i32 @bfa_mem_write(i32 %123, i64 %124, i32 %126)
  %128 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %129 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @BFI_FWBOOT_ENV_OFF, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @swab32(i64 %133)
  %135 = call i32 @bfa_mem_write(i32 %131, i64 %132, i32 %134)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i64) #1

declare dso_local i64 @bfa_cb_image_get_size(i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s*) #1

declare dso_local i64* @bfa_cb_image_get_chunk(i32, i64) #1

declare dso_local i64 @PSS_SMEM_PGNUM(i32, i64) #1

declare dso_local i64 @PSS_SMEM_PGOFF(i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_NO(i64) #1

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_ADDR(i64) #1

declare dso_local i32 @bfa_mem_write(i32, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64) #1

declare dso_local i64 @BFI_FWBOOT_DEVMODE(i32, i32, i32, i32) #1

declare dso_local i32 @swab32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
