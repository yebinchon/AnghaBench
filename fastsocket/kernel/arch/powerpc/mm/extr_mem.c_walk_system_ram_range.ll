; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mem.c_walk_system_ram_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mem.c_walk_system_ram_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmb_property = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_system_ram_range(i64 %0, i64 %1, i8* %2, i32 (i64, i64, i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i64, i64, i8*)*, align 8
  %9 = alloca %struct.lmb_property, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i64, i64, i8*)* %3, i32 (i64, i64, i8*)** %8, align 8
  store i32 -1, i32* %13, align 4
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %59, %4
  %31 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i64 @lmb_find(%struct.lmb_property* %9)
  %37 = icmp sge i64 %36, 0
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i1 [ false, %30 ], [ %37, %35 ]
  br i1 %39, label %40, label %72

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %11, align 8
  %51 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 %51(i64 %52, i64 %53, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %72

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  %70 = add nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.lmb_property, %struct.lmb_property* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  br label %30

72:                                               ; preds = %58, %38
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i64 @lmb_find(%struct.lmb_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
