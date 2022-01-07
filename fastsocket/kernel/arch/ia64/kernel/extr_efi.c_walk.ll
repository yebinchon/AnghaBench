; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_efi.c_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_efi.c_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@EFI_MEMORY_WB = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@kern_memmap = common dso_local global %struct.TYPE_3__* null, align 8
@EFI_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i64, i64, i8*)*, i8*, i64)* @walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk(i64 (i64, i64, i8*)* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64 (i64, i64, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 (i64, i64, i8*)* %0, i64 (i64, i64, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @EFI_MEMORY_WB, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @PAGE_OFFSET, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kern_memmap, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %7, align 8
  br label %21

21:                                               ; preds = %66, %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, -1
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %66

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @PAGE_ALIGN(i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EFI_PAGE_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = add i64 %40, %45
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %33
  %53 = load i64 (i64, i64, i8*)*, i64 (i64, i64, i8*)** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 %53(i64 %56, i64 %59, i8* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 1
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %7, align 8
  br label %21

69:                                               ; preds = %63, %21
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
