; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_msi_bitmap.c_msi_bitmap_alloc_hwirqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_msi_bitmap.c_msi_bitmap_alloc_hwirqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_bitmap = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"msi_bitmap: allocated 0x%x (2^%d) at offset 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_bitmap_alloc_hwirqs(%struct.msi_bitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.msi_bitmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msi_bitmap* %0, %struct.msi_bitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @get_count_order(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.msi_bitmap*, %struct.msi_bitmap** %3, align 8
  %11 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.msi_bitmap*, %struct.msi_bitmap** %3, align 8
  %15 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.msi_bitmap*, %struct.msi_bitmap** %3, align 8
  %18 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bitmap_find_free_region(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.msi_bitmap*, %struct.msi_bitmap** %3, align 8
  %23 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
