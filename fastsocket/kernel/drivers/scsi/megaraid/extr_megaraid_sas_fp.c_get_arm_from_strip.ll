; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_arm_from_strip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_arm_from_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_12__*, %struct.fusion_context* }
%struct.TYPE_12__ = type { i32 }
%struct.fusion_context = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64* }
%struct.MR_FW_RAID_MAP_ALL = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.MR_LD_RAID = type { i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"get_arm_from_stripreturns invalid arm for ld=%x strip=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.megasas_instance*, i64, i64, %struct.MR_FW_RAID_MAP_ALL*)* @get_arm_from_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arm_from_strip(%struct.megasas_instance* %0, i64 %1, i64 %2, %struct.MR_FW_RAID_MAP_ALL* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.megasas_instance*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %10 = alloca %struct.fusion_context*, align 8
  %11 = alloca %struct.MR_LD_RAID*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %3, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 1
  %21 = load %struct.fusion_context*, %struct.fusion_context** %20, align 8
  store %struct.fusion_context* %21, %struct.fusion_context** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %24 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %22, %struct.MR_FW_RAID_MAP_ALL* %23)
  store %struct.MR_LD_RAID* %24, %struct.MR_LD_RAID** %11, align 8
  %25 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %26 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %112, %4
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %38
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %12, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %115

45:                                               ; preds = %32
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %112

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @mega_mod64(i64 %57, i64 %60)
  store i64 %61, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %62

62:                                               ; preds = %104, %52
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %11, align 8
  %65 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %62
  %69 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %9, align 8
  %70 = getelementptr inbounds %struct.MR_FW_RAID_MAP_ALL, %struct.MR_FW_RAID_MAP_ALL* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %82, 1
  %84 = icmp uge i64 %81, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %68
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp uge i64 %86, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %17, align 8
  br label %102

101:                                              ; preds = %85
  br label %107

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %68
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %16, align 8
  br label %62

107:                                              ; preds = %101, %62
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %17, align 8
  %110 = sub i64 %108, %109
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %18, align 8
  store i64 %111, i64* %5, align 8
  br label %123

112:                                              ; preds = %51
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %14, align 8
  br label %28

115:                                              ; preds = %44, %28
  %116 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %117 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %120, i64 %121)
  store i64 -1, i64* %5, align 8
  br label %123

123:                                              ; preds = %115, %107
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
