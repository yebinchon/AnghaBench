; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_scsi_debug_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_scsi_debug_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@scsi_debug_opts = common dso_local global i32 0, align 4
@scsi_debug_every_nth = common dso_local global i64 0, align 8
@scsi_debug_cmnd_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [318 x i8] c"scsi_debug adapter driver, version %s [%s]\0Anum_tgts=%d, shared (ram) size=%d MB, opts=0x%x, every_nth=%d(curr:%d)\0Adelay=%d, max_luns=%d, scsi_level=%d\0Asector_size=%d bytes, cylinders=%d, heads=%d, sectors=%d\0Anumber of aborts=%d, device_reset=%d, bus_resets=%d, host_resets=%d\0Adix_reads=%d dix_writes=%d dif_errors=%d\0A\00", align 1
@SCSI_DEBUG_VERSION = common dso_local global i8* null, align 8
@scsi_debug_version_date = common dso_local global i8* null, align 8
@scsi_debug_num_tgts = common dso_local global i32 0, align 4
@scsi_debug_dev_size_mb = common dso_local global i32 0, align 4
@scsi_debug_delay = common dso_local global i32 0, align 4
@scsi_debug_max_luns = common dso_local global i32 0, align 4
@scsi_debug_scsi_level = common dso_local global i32 0, align 4
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@sdebug_cylinders_per = common dso_local global i32 0, align 4
@sdebug_heads = common dso_local global i32 0, align 4
@sdebug_sectors_per = common dso_local global i32 0, align 4
@num_aborts = common dso_local global i32 0, align 4
@num_dev_resets = common dso_local global i32 0, align 4
@num_bus_resets = common dso_local global i32 0, align 4
@num_host_resets = common dso_local global i32 0, align 4
@dix_reads = common dso_local global i32 0, align 4
@dix_writes = common dso_local global i32 0, align 4
@dif_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @scsi_debug_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_debug_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x i8], align 16
  %19 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %62

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 15
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 15, %26 ], [ %28, %27 ]
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %32 = call i32 @capable(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %36 = call i32 @capable(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %111

41:                                               ; preds = %34
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @memcpy(i8* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %50 = call i32 @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15)
  %51 = icmp ne i32 1, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %111

55:                                               ; preds = %41
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* @scsi_debug_opts, align 4
  %57 = load i64, i64* @scsi_debug_every_nth, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* @scsi_debug_cmnd_count, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %7, align 4
  br label %111

62:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** @SCSI_DEBUG_VERSION, align 8
  %65 = load i8*, i8** @scsi_debug_version_date, align 8
  %66 = load i32, i32* @scsi_debug_num_tgts, align 4
  %67 = load i32, i32* @scsi_debug_dev_size_mb, align 4
  %68 = load i32, i32* @scsi_debug_opts, align 4
  %69 = load i64, i64* @scsi_debug_every_nth, align 8
  %70 = load i32, i32* @scsi_debug_cmnd_count, align 4
  %71 = load i32, i32* @scsi_debug_delay, align 4
  %72 = load i32, i32* @scsi_debug_max_luns, align 4
  %73 = load i32, i32* @scsi_debug_scsi_level, align 4
  %74 = load i32, i32* @scsi_debug_sector_size, align 4
  %75 = load i32, i32* @sdebug_cylinders_per, align 4
  %76 = load i32, i32* @sdebug_heads, align 4
  %77 = load i32, i32* @sdebug_sectors_per, align 4
  %78 = load i32, i32* @num_aborts, align 4
  %79 = load i32, i32* @num_dev_resets, align 4
  %80 = load i32, i32* @num_bus_resets, align 4
  %81 = load i32, i32* @num_host_resets, align 4
  %82 = load i32, i32* @dix_reads, align 4
  %83 = load i32, i32* @dix_writes, align 4
  %84 = load i32, i32* @dif_errors, align 4
  %85 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([318 x i8], [318 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %65, i32 %66, i32 %67, i32 %68, i64 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %89, %62
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i8**, i8*** %10, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %91
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %60, %52, %38
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
