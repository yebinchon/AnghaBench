; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32, i8* }

@SDEBUG_SENSE_LEN = common dso_local global i32 0, align 4
@NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@scsi_debug_dsense = common dso_local global i64 0, align 8
@iec_m_pg = common dso_local global i32* null, align 8
@THRESHOLD_EXCEEDED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_requests(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sdebug_dev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %4, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* @SDEBUG_SENSE_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 18, i32* %10, align 4
  %19 = trunc i64 %16 to i32
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %22 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %27 = load i32, i32* @NO_ADDITIONAL_SENSE, align 4
  %28 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %26, i32 0, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @scsi_debug_dsense, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i1 [ true, %29 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %43 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i32*, i32** @iec_m_pg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %39
  %51 = load i32*, i32** @iec_m_pg, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = icmp eq i32 6, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 114, i8* %60, align 16
  %61 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %61, align 1
  %62 = load i8, i8* @THRESHOLD_EXCEEDED, align 1
  %63 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %62, i8* %63, align 2
  %64 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 -1, i8* %64, align 1
  br label %72

65:                                               ; preds = %56
  %66 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 112, i8* %66, align 16
  %67 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 0, i8* %67, align 2
  %68 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 10, i8* %68, align 1
  %69 = load i8, i8* @THRESHOLD_EXCEEDED, align 1
  %70 = getelementptr inbounds i8, i8* %18, i64 12
  store i8 %69, i8* %70, align 4
  %71 = getelementptr inbounds i8, i8* %18, i64 13
  store i8 -1, i8* %71, align 1
  br label %72

72:                                               ; preds = %65, %59
  br label %103

73:                                               ; preds = %50, %39
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @SDEBUG_SENSE_LEN, align 4
  %76 = call i32 @memcpy(i8* %18, i8* %74, i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %73
  %84 = load i64, i64* @scsi_debug_dsense, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %83
  %87 = trunc i64 %16 to i32
  %88 = call i32 @memset(i8* %18, i32 0, i32 %87)
  %89 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 114, i8* %89, align 16
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %92, i8* %93, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 12
  %96 = load i8, i8* %95, align 1
  %97 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %96, i8* %97, align 2
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 13
  %100 = load i8, i8* %99, align 1
  %101 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %100, i8* %101, align 1
  store i32 8, i32* %10, align 4
  br label %102

102:                                              ; preds = %86, %83, %73
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %105 = load i32, i32* @NO_ADDITIONAL_SENSE, align 4
  %106 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %104, i32 0, i32 %105, i32 0)
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %107, i8* %18, i32 %108)
  %110 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
