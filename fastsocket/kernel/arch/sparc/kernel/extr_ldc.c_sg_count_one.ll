; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_sg_count_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_sg_count_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*)* @sg_count_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_count_one(%struct.scatterlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  %6 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %7 = call i32 @sg_page(%struct.scatterlist* %6)
  %8 = call i64 @page_to_pfn(i32 %7)
  %9 = load i64, i64* @PAGE_SHIFT, align 8
  %10 = shl i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = or i64 %16, %17
  %19 = and i64 %18, 7
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pages_in_region(i64 %29, i64 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @pages_in_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
