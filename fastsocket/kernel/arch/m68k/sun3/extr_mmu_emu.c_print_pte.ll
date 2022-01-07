; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_print_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_print_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN3_PAGE_VALID = common dso_local global i64 0, align 8
@SUN3_PAGE_WRITEABLE = common dso_local global i64 0, align 8
@SUN3_PAGE_SYSTEM = common dso_local global i64 0, align 8
@SUN3_PAGE_NOCACHE = common dso_local global i64 0, align 8
@SUN3_PAGE_ACCESSED = common dso_local global i64 0, align 8
@SUN3_PAGE_MODIFIED = common dso_local global i64 0, align 8
@SUN3_PAGE_TYPE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vme16\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vme32\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unknown?\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c" pte=%08lx [%07lx %s %s]\0A\00", align 1
@SUN3_PAGE_PGNUM_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_pte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [7 x i8], align 1
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @pte_val(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SUN3_PAGE_VALID, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 118, i32 45
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SUN3_PAGE_WRITEABLE, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 119, i32 45
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @SUN3_PAGE_SYSTEM, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 115, i32 45
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @SUN3_PAGE_NOCACHE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 120, i32 45
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 3
  store i8 %38, i8* %39, align 1
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @SUN3_PAGE_ACCESSED, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 97, i32 45
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 4
  store i8 %46, i8* %47, align 1
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @SUN3_PAGE_MODIFIED, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 109, i32 45
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 5
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 6
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @SUN3_PAGE_TYPE_MASK, align 8
  %59 = and i64 %57, %58
  switch i64 %59, label %64 [
    i64 130, label %60
    i64 131, label %61
    i64 129, label %62
    i64 128, label %63
  ]

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %65

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %65

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %65

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %65

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %65

65:                                               ; preds = %64, %63, %62, %61, %60
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @SUN3_PAGE_PGNUM_MASK, align 8
  %69 = and i64 %67, %68
  %70 = load i64, i64* @PAGE_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %66, i64 %71, i8* %72, i8* %73)
  ret void
}

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
