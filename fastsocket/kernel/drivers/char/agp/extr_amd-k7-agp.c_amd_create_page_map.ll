; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd-k7-agp.c_amd_create_page_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd-k7-agp.c_amd_create_page_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.amd_page_map = type { i64*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_page_map*)* @amd_create_page_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_create_page_map(%struct.amd_page_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_page_map*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_page_map* %0, %struct.amd_page_map** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i64 @__get_free_page(i32 %5)
  %7 = inttoptr i64 %6 to i64*
  %8 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %9 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %8, i32 0, i32 0
  store i64* %7, i64** %9, align 8
  %10 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %11 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %19 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @virt_to_page(i64* %20)
  %22 = call i32 @SetPageReserved(i32 %21)
  %23 = call i32 (...) @global_cache_flush()
  %24 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %25 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call i32 @virt_to_phys(i64* %26)
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i64* @ioremap_nocache(i32 %27, i32 %28)
  %30 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %31 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %30, i32 0, i32 1
  store i64* %29, i64** %31, align 8
  %32 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %33 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %17
  %37 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %38 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @virt_to_page(i64* %39)
  %41 = call i32 @ClearPageReserved(i32 %40)
  %42 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %43 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = ptrtoint i64* %44 to i64
  %46 = call i32 @free_page(i64 %45)
  %47 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %48 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %47, i32 0, i32 0
  store i64* null, i64** %48, align 8
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %17
  %52 = call i32 (...) @global_cache_flush()
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %78, %51
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %65 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = call i32 @writel(i32 %63, i64* %69)
  %71 = load %struct.amd_page_map*, %struct.amd_page_map** %3, align 8
  %72 = getelementptr inbounds %struct.amd_page_map, %struct.amd_page_map* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = call i32 @readl(i64* %76)
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %53

81:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %36, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i64*) #1

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i64* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @virt_to_phys(i64*) #1

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @writel(i32, i64*) #1

declare dso_local i32 @readl(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
