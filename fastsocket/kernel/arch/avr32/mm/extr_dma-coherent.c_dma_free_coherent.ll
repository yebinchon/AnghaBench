; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c_dma_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c_dma_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"dma_free_coherent addr %p (phys %08lx) size %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_free_coherent(%struct.device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @uncached_to_phys(i8* %11)
  %13 = call i8* @phys_to_cached(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15, i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @virt_addr_valid(i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.page* @virt_to_page(i8* %25)
  store %struct.page* %26, %struct.page** %10, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @__dma_free(%struct.device* %27, i64 %28, %struct.page* %29, i64 %30)
  ret void
}

declare dso_local i8* @phys_to_cached(i32) #1

declare dso_local i32 @uncached_to_phys(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @__dma_free(%struct.device*, i64, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
