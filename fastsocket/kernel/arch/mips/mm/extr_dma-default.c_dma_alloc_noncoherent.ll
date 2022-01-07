; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_alloc_noncoherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_alloc_noncoherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_noncoherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @massage_gfp_flags(%struct.device* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @get_order(i64 %14)
  %16 = call i64 @__get_free_pages(i32 %13, i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memset(i8* %21, i32 0, i64 %22)
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @plat_map_dma_mem(%struct.device* %24, i8* %25, i64 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %4
  %30 = load i8*, i8** %9, align 8
  ret i8* %30
}

declare dso_local i32 @massage_gfp_flags(%struct.device*, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @plat_map_dma_mem(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
