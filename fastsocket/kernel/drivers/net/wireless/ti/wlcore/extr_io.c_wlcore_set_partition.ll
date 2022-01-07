; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_io.c_wlcore_set_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_io.c_wlcore_set_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wlcore_partition_set = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@DEBUG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mem_start %08X mem_size %08X\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"reg_start %08X reg_size %08X\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mem2_start %08X mem2_size %08X\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"mem3_start %08X mem3_size %08X\00", align 1
@HW_PART0_START_ADDR = common dso_local global i32 0, align 4
@HW_PART0_SIZE_ADDR = common dso_local global i32 0, align 4
@HW_PART1_START_ADDR = common dso_local global i32 0, align 4
@HW_PART1_SIZE_ADDR = common dso_local global i32 0, align 4
@HW_PART2_START_ADDR = common dso_local global i32 0, align 4
@HW_PART2_SIZE_ADDR = common dso_local global i32 0, align 4
@HW_PART3_START_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_set_partition(%struct.wl1271* %0, %struct.wlcore_partition_set* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wlcore_partition_set*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wlcore_partition_set* %1, %struct.wlcore_partition_set** %4, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %9 = call i32 @memcpy(i32* %7, %struct.wlcore_partition_set* %8, i32 32)
  %10 = load i32, i32* @DEBUG_IO, align 4
  %11 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %12 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %16 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load i32, i32* @DEBUG_IO, align 4
  %21 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %22 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %26 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wl1271_debug(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* @DEBUG_IO, align 4
  %31 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %32 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %36 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wl1271_debug(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load i32, i32* @DEBUG_IO, align 4
  %41 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %42 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %46 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wl1271_debug(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %51 = load i32, i32* @HW_PART0_START_ADDR, align 4
  %52 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %53 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wlcore_raw_write32(%struct.wl1271* %50, i32 %51, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %2
  br label %123

60:                                               ; preds = %2
  %61 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %62 = load i32, i32* @HW_PART0_SIZE_ADDR, align 4
  %63 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %64 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wlcore_raw_write32(%struct.wl1271* %61, i32 %62, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %123

71:                                               ; preds = %60
  %72 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %73 = load i32, i32* @HW_PART1_START_ADDR, align 4
  %74 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %75 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wlcore_raw_write32(%struct.wl1271* %72, i32 %73, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %123

82:                                               ; preds = %71
  %83 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %84 = load i32, i32* @HW_PART1_SIZE_ADDR, align 4
  %85 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %86 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wlcore_raw_write32(%struct.wl1271* %83, i32 %84, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %123

93:                                               ; preds = %82
  %94 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %95 = load i32, i32* @HW_PART2_START_ADDR, align 4
  %96 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %97 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wlcore_raw_write32(%struct.wl1271* %94, i32 %95, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %123

104:                                              ; preds = %93
  %105 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %106 = load i32, i32* @HW_PART2_SIZE_ADDR, align 4
  %107 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %108 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @wlcore_raw_write32(%struct.wl1271* %105, i32 %106, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %123

115:                                              ; preds = %104
  %116 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %117 = load i32, i32* @HW_PART3_START_ADDR, align 4
  %118 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %4, align 8
  %119 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wlcore_raw_write32(%struct.wl1271* %116, i32 %117, i32 %121)
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %115, %114, %103, %92, %81, %70, %59
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @memcpy(i32*, %struct.wlcore_partition_set*, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @wlcore_raw_write32(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
