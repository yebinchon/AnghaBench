; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.mem_type*)* @remap_area_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_pages(i64 %0, i64 %1, i64 %2, %struct.mem_type* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mem_type* %3, %struct.mem_type** %8, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @__pfn_to_phys(i64 %19)
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp uge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = call i32* @pgd_offset_k(i64 %26)
  store i32* %27, i32** %13, align 8
  br label %28

28:                                               ; preds = %47, %4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @pgd_addr_end(i64 %29, i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %37 = call i32 @remap_area_pmd(i32* %32, i64 %33, i64 %34, i64 %35, %struct.mem_type* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %54

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %28, label %54

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %14, align 4
  ret i32 %55
}

declare dso_local i64 @__pfn_to_phys(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @remap_area_pmd(i32*, i64, i64, i64, %struct.mem_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
