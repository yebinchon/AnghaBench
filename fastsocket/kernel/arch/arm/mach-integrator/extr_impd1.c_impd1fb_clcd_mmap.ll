; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1fb_clcd_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1fb_clcd_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clcd_fb*, %struct.vm_area_struct*)* @impd1fb_clcd_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impd1fb_clcd_mmap(%struct.clcd_fb* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %11 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  %17 = add i64 %9, %16
  store i64 %17, i64* %5, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @remap_pfn_range(%struct.vm_area_struct* %25, i64 %28, i64 %29, i64 %30, i32 %33)
  ret i32 %34
}

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
