; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_span_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_span_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.MR_FW_RAID_MAP_ALL = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.MR_QUAD_ELEMENT* }
%struct.MR_QUAD_ELEMENT = type { i64, i64, i64, i64 }
%struct.MR_LD_RAID = type { i64, i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@SPAN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mr_spanset_get_span_block(%struct.megasas_instance* %0, i64 %1, i64 %2, i64* %3, %struct.MR_FW_RAID_MAP_ALL* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %12 = alloca %struct.fusion_context*, align 8
  %13 = alloca %struct.MR_LD_RAID*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %4, %struct.MR_FW_RAID_MAP_ALL** %11, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 0
  %22 = load %struct.fusion_context*, %struct.fusion_context** %21, align 8
  store %struct.fusion_context* %22, %struct.fusion_context** %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %11, align 8
  %25 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %23, %struct.MR_FW_RAID_MAP_ALL* %24)
  store %struct.MR_LD_RAID* %25, %struct.MR_LD_RAID** %13, align 8
  %26 = load %struct.fusion_context*, %struct.fusion_context** %12, align 8
  %27 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %18, align 8
  store i64 0, i64* %17, align 8
  br label %29

29:                                               ; preds = %154, %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %157

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %14, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %157

46:                                               ; preds = %33
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %154

53:                                               ; preds = %46
  store i64 0, i64* %16, align 8
  br label %54

54:                                               ; preds = %150, %53
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %57 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %153

60:                                               ; preds = %54
  %61 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %11, align 8
  %62 = getelementptr inbounds %struct.MR_FW_RAID_MAP_ALL, %struct.MR_FW_RAID_MAP_ALL* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, 1
  %76 = icmp uge i64 %73, %75
  br i1 %76, label %77, label %149

77:                                               ; preds = %60
  %78 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %11, align 8
  %79 = getelementptr inbounds %struct.MR_FW_RAID_MAP_ALL, %struct.MR_FW_RAID_MAP_ALL* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %90, i64 %91
  store %struct.MR_QUAD_ELEMENT* %92, %struct.MR_QUAD_ELEMENT** %15, align 8
  %93 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %94 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %77
  %98 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %98, i64* %6, align 8
  br label %159

99:                                               ; preds = %77
  %100 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %101 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %105, label %148

105:                                              ; preds = %99
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %108 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sle i64 %106, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %114 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %118 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @mega_mod64(i64 %116, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %111
  %123 = load i64*, i64** %10, align 8
  %124 = icmp ne i64* %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %128 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %132 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @mega_div64_32(i64 %130, i64 %133)
  store i64 %134, i64* %19, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %137 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %141 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = shl i64 %139, %142
  store i64 %143, i64* %19, align 8
  %144 = load i64, i64* %19, align 8
  %145 = load i64*, i64** %10, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %125, %122
  %147 = load i64, i64* %16, align 8
  store i64 %147, i64* %6, align 8
  br label %159

148:                                              ; preds = %111, %105, %99
  br label %149

149:                                              ; preds = %148, %60
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %16, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %16, align 8
  br label %54

153:                                              ; preds = %54
  br label %154

154:                                              ; preds = %153, %52
  %155 = load i64, i64* %17, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %17, align 8
  br label %29

157:                                              ; preds = %45, %29
  %158 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %157, %146, %97
  %160 = load i64, i64* %6, align 8
  ret i64 %160
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
