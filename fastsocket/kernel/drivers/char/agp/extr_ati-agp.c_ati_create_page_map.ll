; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ati-agp.c_ati_create_page_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ati-agp.c_ati_create_page_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ati_page_map = type { i64*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_page_map*)* @ati_create_page_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_create_page_map(%struct.ati_page_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ati_page_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ati_page_map* %0, %struct.ati_page_map** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @__get_free_page(i32 %6)
  %8 = inttoptr i64 %7 to i64*
  %9 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %10 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %9, i32 0, i32 0
  store i64* %8, i64** %10, align 8
  %11 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %12 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %20 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = ptrtoint i64* %21 to i64
  %23 = call i32 @set_memory_uc(i64 %22, i32 1)
  %24 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %25 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call i32 @virt_to_page(i64* %26)
  %28 = call i32 @map_page_into_agp(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %30 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %33 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %32, i32 0, i32 1
  store i64* %31, i64** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %59, %18
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %46 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = call i32 @writel(i32 %44, i64* %50)
  %52 = load %struct.ati_page_map*, %struct.ati_page_map** %3, align 8
  %53 = getelementptr inbounds %struct.ati_page_map, %struct.ati_page_map* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = call i32 @readl(i64* %57)
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %34

62:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @set_memory_uc(i64, i32) #1

declare dso_local i32 @map_page_into_agp(i32) #1

declare dso_local i32 @virt_to_page(i64*) #1

declare dso_local i32 @writel(i32, i64*) #1

declare dso_local i32 @readl(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
