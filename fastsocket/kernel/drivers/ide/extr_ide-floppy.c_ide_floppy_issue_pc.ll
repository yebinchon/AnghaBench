; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_ide_floppy_issue_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_ide_floppy_issue_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)*, %struct.ide_atapi_pc*, %struct.TYPE_7__*, %struct.ide_atapi_pc*, %struct.ide_disk_obj* }
%struct.TYPE_7__ = type { i32 }
%struct.ide_disk_obj = type { i32 }
%struct.ide_cmd = type { i32 }
%struct.ide_atapi_pc = type { i64*, i64, i32, i32 }

@GPCMD_REQUEST_SENSE = common dso_local global i64 0, align 8
@IDEFLOPPY_MAX_PC_RETRIES = common dso_local global i64 0, align 8
@PC_FLAG_SUPPRESS_ERROR = common dso_local global i32 0, align 4
@IDE_DRV_ERROR_GENERAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"retry #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.ide_cmd*, %struct.ide_atapi_pc*)* @ide_floppy_issue_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_floppy_issue_pc(%struct.TYPE_8__* %0, %struct.ide_cmd* %1, %struct.ide_atapi_pc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  %7 = alloca %struct.ide_atapi_pc*, align 8
  %8 = alloca %struct.ide_disk_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %6, align 8
  store %struct.ide_atapi_pc* %2, %struct.ide_atapi_pc** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %11, align 8
  store %struct.ide_disk_obj* %12, %struct.ide_disk_obj** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %14, align 8
  %16 = icmp eq %struct.ide_atapi_pc* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %19 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GPCMD_REQUEST_SENSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store %struct.ide_atapi_pc* %26, %struct.ide_atapi_pc** %28, align 8
  br label %29

29:                                               ; preds = %25, %17, %3
  %30 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  store %struct.ide_atapi_pc* %30, %struct.ide_atapi_pc** %32, align 8
  %33 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %34 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IDEFLOPPY_MAX_PC_RETRIES, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @blk_rq_bytes(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %46 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PC_FLAG_SUPPRESS_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %8, align 8
  %53 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %54 = call i32 @ide_floppy_report_error(%struct.ide_disk_obj* %52, %struct.ide_atapi_pc* %53)
  br label %55

55:                                               ; preds = %51, %38
  %56 = load i32, i32* @IDE_DRV_ERROR_GENERAL, align 4
  %57 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %58 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store %struct.ide_atapi_pc* null, %struct.ide_atapi_pc** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = call i32 %63(%struct.TYPE_8__* %64, i32 0)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ide_complete_rq(%struct.TYPE_8__* %66, i32 %68, i32 %69)
  %71 = load i32, i32* @ide_stopped, align 4
  store i32 %71, i32* %4, align 4
  br label %85

72:                                               ; preds = %29
  %73 = load i32, i32* @IDE_DBG_FUNC, align 4
  %74 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %75 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ide_debug_log(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %79 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %84 = call i32 @ide_issue_pc(%struct.TYPE_8__* %82, %struct.ide_cmd* %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %72, %55
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @blk_rq_bytes(i32) #1

declare dso_local i32 @ide_floppy_report_error(%struct.ide_disk_obj*, %struct.ide_atapi_pc*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i64) #1

declare dso_local i32 @ide_issue_pc(%struct.TYPE_8__*, %struct.ide_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
