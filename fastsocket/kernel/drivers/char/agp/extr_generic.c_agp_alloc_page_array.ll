; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_alloc_page_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_alloc_page_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_alloc_page_array(i64 %0, %struct.agp_memory* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.agp_memory*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.agp_memory* %1, %struct.agp_memory** %4, align 8
  %5 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %6 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %8 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 2, %10
  %12 = sext i32 %11 to i64
  %13 = icmp ule i64 %9, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_NORETRY, align 4
  %18 = or i32 %16, %17
  %19 = call i32* @kmalloc(i64 %15, i32 %18)
  %20 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %21 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i32* @vmalloc(i64 %28)
  %30 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32* @vmalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
