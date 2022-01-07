; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_io.c_wl1251_set_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_io.c_wl1251_set_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.wl1251*, i32, %struct.wl1251_partition*, i32)* }
%struct.wl1251_partition = type { i64, i64 }

@DEBUG_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mem_start %08X mem_size %08X\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"reg_start %08X reg_size %08X\00", align 1
@HW_ACCESS_MEMORY_MAX_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"Total size exceeds maximum virtual address range.  Truncating partition[0].\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"End of partition[0] is overlapping partition[1].  Adjusted.\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"End of partition[1] is overlapping partition[0].  Adjusted.\00", align 1
@HW_ACCESS_PART0_SIZE_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_set_partition(%struct.wl1251* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x %struct.wl1251_partition], align 16
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @DEBUG_SPI, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @DEBUG_SPI, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @HW_ACCESS_MEMORY_MAX_RANGE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %5
  %26 = load i32, i32* @DEBUG_SPI, align 4
  %27 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %26, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* @HW_ACCESS_MEMORY_MAX_RANGE, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @DEBUG_SPI, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i32, i32* @DEBUG_SPI, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %25, %5
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32, i32* @DEBUG_SPI, align 4
  %51 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @DEBUG_SPI, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i32, i32* @DEBUG_SPI, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61)
  br label %88

63:                                               ; preds = %43, %39
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i32, i32* @DEBUG_SPI, align 4
  %75 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* @DEBUG_SPI, align 4
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i32, i32* @DEBUG_SPI, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %73, %67, %63
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds [2 x %struct.wl1251_partition], [2 x %struct.wl1251_partition]* %11, i64 0, i64 0
  %91 = getelementptr inbounds %struct.wl1251_partition, %struct.wl1251_partition* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds [2 x %struct.wl1251_partition], [2 x %struct.wl1251_partition]* %11, i64 0, i64 0
  %94 = getelementptr inbounds %struct.wl1251_partition, %struct.wl1251_partition* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 16
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds [2 x %struct.wl1251_partition], [2 x %struct.wl1251_partition]* %11, i64 0, i64 1
  %97 = getelementptr inbounds %struct.wl1251_partition, %struct.wl1251_partition* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds [2 x %struct.wl1251_partition], [2 x %struct.wl1251_partition]* %11, i64 0, i64 1
  %100 = getelementptr inbounds %struct.wl1251_partition, %struct.wl1251_partition* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 16
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %103 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %106 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %108 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %111 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %113 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32 (%struct.wl1251*, i32, %struct.wl1251_partition*, i32)*, i32 (%struct.wl1251*, i32, %struct.wl1251_partition*, i32)** %115, align 8
  %117 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %118 = load i32, i32* @HW_ACCESS_PART0_SIZE_ADDR, align 4
  %119 = getelementptr inbounds [2 x %struct.wl1251_partition], [2 x %struct.wl1251_partition]* %11, i64 0, i64 0
  %120 = call i32 %116(%struct.wl1251* %117, i32 %118, %struct.wl1251_partition* %119, i32 32)
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
