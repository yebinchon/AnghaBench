; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_erase_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.ns_mem = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"erase_sector: freeing page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nandsim*)* @erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_sector(%struct.nandsim* %0) #0 {
  %2 = alloca %struct.nandsim*, align 8
  %3 = alloca %union.ns_mem*, align 8
  %4 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %2, align 8
  %5 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %6 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %51, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %13 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %10
  %18 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %19 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %22 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %20, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %17
  %32 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %33 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @NS_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %40 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %43 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %41, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %31, %17
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %10

54:                                               ; preds = %10
  br label %93

55:                                               ; preds = %1
  %56 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %57 = call %union.ns_mem* @NS_GET_PAGE(%struct.nandsim* %56)
  store %union.ns_mem* %57, %union.ns_mem** %3, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %90, %55
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %61 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load %union.ns_mem*, %union.ns_mem** %3, align 8
  %67 = bitcast %union.ns_mem* %66 to i32**
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %72 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @NS_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %79 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %union.ns_mem*, %union.ns_mem** %3, align 8
  %82 = bitcast %union.ns_mem* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @kmem_cache_free(i32 %80, i32* %83)
  %85 = load %union.ns_mem*, %union.ns_mem** %3, align 8
  %86 = bitcast %union.ns_mem* %85 to i32**
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %70, %65
  %88 = load %union.ns_mem*, %union.ns_mem** %3, align 8
  %89 = getelementptr inbounds %union.ns_mem, %union.ns_mem* %88, i32 1
  store %union.ns_mem* %89, %union.ns_mem** %3, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %58

93:                                               ; preds = %54, %58
  ret void
}

declare dso_local i32 @NS_DBG(i8*, i32) #1

declare dso_local %union.ns_mem* @NS_GET_PAGE(%struct.nandsim*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
