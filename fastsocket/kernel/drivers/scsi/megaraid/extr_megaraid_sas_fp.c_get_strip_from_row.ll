; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_strip_from_row.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_strip_from_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_12__*, %struct.fusion_context* }
%struct.TYPE_12__ = type { i32 }
%struct.fusion_context = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64*, i64 }
%struct.MR_FW_RAID_MAP_ALL = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.MR_QUAD_ELEMENT* }
%struct.MR_QUAD_ELEMENT = type { i64, i64, i32 }
%struct.MR_LD_RAID = type { i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"get_strip_from_rowreturns invalid strip for ld=%x, row=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.megasas_instance*, i64, i64, %struct.MR_FW_RAID_MAP_ALL*)* @get_strip_from_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_strip_from_row(%struct.megasas_instance* %0, i64 %1, i64 %2, %struct.MR_FW_RAID_MAP_ALL* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.megasas_instance*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %10 = alloca %struct.fusion_context*, align 8
  %11 = alloca %struct.MR_LD_RAID*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %3, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load %struct.fusion_context*, %struct.fusion_context** %19, align 8
  store %struct.fusion_context* %20, %struct.fusion_context** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %23 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %21, %struct.MR_FW_RAID_MAP_ALL* %22)
  store %struct.MR_LD_RAID* %23, %struct.MR_LD_RAID** %11, align 8
  %24 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %25 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %14, align 8
  store i64 0, i64* %16, align 8
  br label %27

27:                                               ; preds = %152, %4
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %155

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i64, i64* %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 %37
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %12, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %155

44:                                               ; preds = %31
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %152

51:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %52

52:                                               ; preds = %148, %51
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %11, align 8
  %55 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %151

58:                                               ; preds = %52
  %59 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %60 = getelementptr inbounds %struct.MR_FW_RAID_MAP_ALL, %struct.MR_FW_RAID_MAP_ALL* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %72, 1
  %74 = icmp uge i64 %71, %73
  br i1 %74, label %75, label %147

75:                                               ; preds = %58
  %76 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %77 = getelementptr inbounds %struct.MR_FW_RAID_MAP_ALL, %struct.MR_FW_RAID_MAP_ALL* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %88, i64 %89
  store %struct.MR_QUAD_ELEMENT* %90, %struct.MR_QUAD_ELEMENT** %13, align 8
  %91 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %92 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %75
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %99 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %97, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %96
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %105 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %109 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @mega_mod64(i64 %107, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %102
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %120 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %124 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @mega_div64_32(i64 %122, i32 %125)
  store i64 %126, i64* %17, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %17, align 8
  %131 = mul nsw i64 %130, %129
  store i64 %131, i64* %17, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %17, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %17, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %17, align 8
  %145 = load i64, i64* %17, align 8
  store i64 %145, i64* %5, align 8
  br label %163

146:                                              ; preds = %102, %96, %75
  br label %147

147:                                              ; preds = %146, %58
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %15, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %15, align 8
  br label %52

151:                                              ; preds = %52
  br label %152

152:                                              ; preds = %151, %50
  %153 = load i64, i64* %16, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %16, align 8
  br label %27

155:                                              ; preds = %43, %27
  %156 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %157 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %160, i64 %161)
  store i64 -1, i64* %5, align 8
  br label %163

163:                                              ; preds = %155, %113
  %164 = load i64, i64* %5, align 8
  ret i64 %164
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i64, i32) #1

declare dso_local i64 @mega_div64_32(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
