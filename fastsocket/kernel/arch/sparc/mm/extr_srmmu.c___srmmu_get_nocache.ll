; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c___srmmu_get_nocache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c___srmmu_get_nocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SRMMU_NOCACHE_BITMAP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Size 0x%x too small for nocache request\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Size 0x%x unaligned int nocache request\0A\00", align 1
@SRMMU_NOCACHE_ALIGN_MAX = common dso_local global i32 0, align 4
@srmmu_nocache_map = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"srmmu: out of nocache %d: %d/%d\0A\00", align 1
@srmmu_nocache_size = common dso_local global i64 0, align 8
@SRMMU_NOCACHE_VADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @__srmmu_get_nocache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__srmmu_get_nocache(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SRMMU_NOCACHE_ALIGN_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = call i32 @bit_map_string_get(%struct.TYPE_3__* @srmmu_nocache_map, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* @srmmu_nocache_size, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srmmu_nocache_map, i32 0, i32 0), align 4
  %47 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45, i32 %48)
  store i64 0, i64* %3, align 8
  br label %57

50:                                               ; preds = %27
  %51 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add i64 %51, %55
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %50, %42
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bit_map_string_get(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
