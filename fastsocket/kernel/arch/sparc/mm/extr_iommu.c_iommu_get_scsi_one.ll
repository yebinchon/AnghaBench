; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i32)* @iommu_get_scsi_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_get_scsi_one(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = and i64 %27, %28
  %30 = call %struct.page* @virt_to_page(i64 %29)
  store %struct.page* %30, %struct.page** %9, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @iommu_get_one(%struct.device* %31, %struct.page* %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %35, %36
  ret i64 %37
}

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i64 @iommu_get_one(%struct.device*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
