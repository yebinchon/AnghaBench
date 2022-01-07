; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_wait_for_device_to_become_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_wait_for_device_to_become_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64* }

@.str = private unnamed_addr constant [51 x i8] c"out of memory in wait_for_device_to_become_ready.\0A\00", align 1
@IO_ERROR = common dso_local global i32 0, align 4
@HPSA_TUR_RETRY_LIMIT = common dso_local global i32 0, align 4
@HPSA_MAX_WAIT_INTERVAL_SECS = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i64 0, align 8
@CMD_TARGET_STATUS = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@NO_SENSE = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"waiting %d secs for device to become ready.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"giving up on device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"device is ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*)* @wait_for_device_to_become_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_device_to_become_ready(%struct.ctlr_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.CommandList*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %11 = call %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info* %10)
  store %struct.CommandList* %11, %struct.CommandList** %9, align 8
  %12 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %13 = icmp ne %struct.CommandList* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_warn(i32* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @IO_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %120

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %93, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HPSA_TUR_RETRY_LIMIT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 1000, %27
  %29 = call i32 @msleep(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @HPSA_MAX_WAIT_INTERVAL_SECS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %40 = load i32, i32* @TEST_UNIT_READY, align 4
  %41 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @TYPE_CMD, align 4
  %44 = call i32 @fill_cmd(%struct.CommandList* %39, i32 %40, %struct.ctlr_info* %41, i32* null, i32 0, i32 0, i8* %42, i32 %43)
  %45 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %46 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %47 = call i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info* %45, %struct.CommandList* %46)
  %48 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %49 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMD_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %100

56:                                               ; preds = %38
  %57 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %58 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CMD_TARGET_STATUS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %56
  %65 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %66 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  %73 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %74 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NO_SENSE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %72
  %83 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %84 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UNIT_ATTENTION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82, %72
  br label %100

93:                                               ; preds = %82, %64, %56
  %94 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %95 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_warn(i32* %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  store i32 1, i32* %6, align 4
  br label %22

100:                                              ; preds = %92, %55, %22
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %105 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_warn(i32* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %115

109:                                              ; preds = %100
  %110 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %111 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_warn(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %117 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %118 = call i32 @cmd_special_free(%struct.ctlr_info* %116, %struct.CommandList* %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %14
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @cmd_special_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
