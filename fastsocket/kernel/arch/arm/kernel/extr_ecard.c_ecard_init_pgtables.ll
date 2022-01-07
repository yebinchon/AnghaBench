; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_init_pgtables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_init_pgtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.mm_struct* }

@IO_BASE = common dso_local global i64 0, align 8
@IO_START = common dso_local global i32 0, align 4
@IO_SIZE = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@EASI_BASE = common dso_local global i32 0, align 4
@EASI_START = common dso_local global i32 0, align 4
@EASI_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @ecard_init_pgtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_init_pgtables(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = load i64, i64* @IO_BASE, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32* @pgd_offset(%struct.mm_struct* %6, i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = load i32, i32* @IO_START, align 4
  %12 = call i32* @pgd_offset(%struct.mm_struct* %10, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @IO_SIZE, align 4
  %16 = load i32, i32* @PGDIR_SIZE, align 4
  %17 = sdiv i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(i32* %13, i32* %14, i32 %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = load i32, i32* @EASI_BASE, align 4
  %24 = call i32* @pgd_offset(%struct.mm_struct* %22, i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = load i32, i32* @EASI_START, align 4
  %27 = call i32* @pgd_offset(%struct.mm_struct* %25, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @EASI_SIZE, align 4
  %31 = load i32, i32* @PGDIR_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i32* %28, i32* %29, i32 %35)
  %37 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i32 0, i32 0
  store %struct.mm_struct* %37, %struct.mm_struct** %38, align 8
  %39 = load i32, i32* @IO_START, align 4
  %40 = load i32, i32* @IO_START, align 4
  %41 = load i32, i32* @IO_SIZE, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @flush_tlb_range(%struct.vm_area_struct* %3, i32 %39, i32 %42)
  %44 = load i32, i32* @EASI_START, align 4
  %45 = load i32, i32* @EASI_START, align 4
  %46 = load i32, i32* @EASI_SIZE, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @flush_tlb_range(%struct.vm_area_struct* %3, i32 %44, i32 %47)
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
