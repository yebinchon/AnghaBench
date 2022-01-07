; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetSpanBlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetSpanBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_FW_RAID_MAP_ALL = type { i32 }
%struct.MR_SPAN_BLOCK_INFO = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.MR_QUAD_ELEMENT* }
%struct.MR_QUAD_ELEMENT = type { i64, i64, i64, i64 }
%struct.MR_LD_RAID = type { i64, i64 }

@SPAN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MR_GetSpanBlock(i64 %0, i64 %1, i64* %2, %struct.MR_FW_RAID_MAP_ALL* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %10 = alloca %struct.MR_SPAN_BLOCK_INFO*, align 8
  %11 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %12 = alloca %struct.MR_LD_RAID*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %3, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %19 = call %struct.MR_SPAN_BLOCK_INFO* @MR_LdSpanInfoGet(i64 %17, %struct.MR_FW_RAID_MAP_ALL* %18)
  store %struct.MR_SPAN_BLOCK_INFO* %19, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %22 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %20, %struct.MR_FW_RAID_MAP_ALL* %21)
  store %struct.MR_LD_RAID* %22, %struct.MR_LD_RAID** %12, align 8
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %105, %4
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %26 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %110

29:                                               ; preds = %23
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %101, %29
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %33 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %30
  %38 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %39 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %41, i64 %42
  store %struct.MR_QUAD_ELEMENT* %43, %struct.MR_QUAD_ELEMENT** %11, align 8
  %44 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %45 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %49, i64* %5, align 8
  br label %112

50:                                               ; preds = %37
  %51 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %52 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %59 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %57, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %56
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %65 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %69 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @mega_mod64(i64 %67, i64 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %62
  %74 = load i64*, i64** %8, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %79 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %83 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @mega_div64_32(i64 %81, i64 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  store i64 %86, i64* %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %89 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %93 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %91, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %76, %73
  %99 = load i64, i64* %13, align 8
  store i64 %99, i64* %5, align 8
  br label %112

100:                                              ; preds = %62, %56, %50
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %14, align 8
  br label %30

104:                                              ; preds = %30
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %13, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %13, align 8
  %108 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %109 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %108, i32 1
  store %struct.MR_SPAN_BLOCK_INFO* %109, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  br label %23

110:                                              ; preds = %23
  %111 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %111, i64* %5, align 8
  br label %112

112:                                              ; preds = %110, %98, %48
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local %struct.MR_SPAN_BLOCK_INFO* @MR_LdSpanInfoGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
