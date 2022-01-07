; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_free_nocache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_free_nocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRMMU_NOCACHE_VADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Vaddr %lx is smaller than nocache base 0x%lx\0A\00", align 1
@srmmu_nocache_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Vaddr %lx is bigger than nocache end 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Size 0x%x is not a power of 2\0A\00", align 1
@SRMMU_NOCACHE_BITMAP_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Size 0x%x is too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Vaddr %lx is not aligned to size 0x%x\0A\00", align 1
@srmmu_nocache_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @srmmu_free_nocache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srmmu_free_nocache(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %12 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = load i64, i64* @srmmu_nocache_end, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @srmmu_nocache_end, align 8
  %24 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %23)
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @is_power_of_2(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = and i64 %45, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %52, i32 %53)
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %59 = sub i64 %57, %58
  %60 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %61 = zext i32 %60 to i64
  %62 = lshr i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @bit_map_clear(i32* @srmmu_nocache_map, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bit_map_clear(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
