; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_query_file_info_deal_response.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_query_file_info_deal_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8** }
%struct.fast_task_info = type { i64 }
%struct.stat = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@g_fdfs_base64_context = common dso_local global i32 0, align 4
@FDFS_LOGIC_FILE_PATH_LEN = common dso_local global i32 0, align 4
@FDFS_FILENAME_BASE64_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/data/%s\00", align 1
@g_fdfs_store_paths = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@calc_crc32_done_callback_for_query_finfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*, i8*, i8*, %struct.stat*, i32)* @query_file_info_deal_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_file_info_deal_response(%struct.fast_task_info* %0, i8* %1, i8* %2, %struct.stat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fast_task_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.fast_task_info* %0, %struct.fast_task_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.stat* %3, %struct.stat** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 64)
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @FDFS_LOGIC_FILE_PATH_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* @FDFS_FILENAME_BASE64_LENGTH, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %28 = call i32 @base64_decode_auto(i32* @g_fdfs_base64_context, i8* %25, i32 %26, i8* %27, i32* %13)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %30 = call i32 @buff2int(i8* %29)
  %31 = call i32 @ntohl(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @buff2long(i8* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @IS_APPENDER_FILE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %5
  %39 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %40 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %18, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %19, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_fdfs_store_paths, i32 0, i32 0), align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %52, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  %60 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %61 = load i32, i32* @calc_crc32_done_callback_for_query_finfo, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.stat*, %struct.stat** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @push_calc_crc32_to_dio_queue(%struct.fast_task_info* %60, i32 %61, i32 %62, %struct.stat* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %5
  %67 = load i32, i32* %14, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.stat*, %struct.stat** %10, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.stat*, %struct.stat** %10, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %78 = getelementptr inbounds i8, i8* %77, i64 16
  %79 = call i32 @buff2int(i8* %78)
  store i32 %79, i32* %15, align 4
  %80 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @query_file_info_response(%struct.fast_task_info* %80, %struct.TYPE_6__* %17, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %66, %38
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @base64_decode_auto(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @buff2int(i8*) #1

declare dso_local i32 @buff2long(i8*) #1

declare dso_local i64 @IS_APPENDER_FILE(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @push_calc_crc32_to_dio_queue(%struct.fast_task_info*, i32, i32, %struct.stat*, i32) #1

declare dso_local i32 @query_file_info_response(%struct.fast_task_info*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
