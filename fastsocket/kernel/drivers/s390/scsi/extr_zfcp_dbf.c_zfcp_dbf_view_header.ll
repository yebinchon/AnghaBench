; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_view_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_view_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zfcp_dbf_dump = type { i64, i64, i64, i32, i32 }
%struct.timespec = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%011lu:%06lu\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02i\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.debug_view*, i32, %struct.TYPE_8__*, i8*)* @zfcp_dbf_view_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_view_header(i32* %0, %struct.debug_view* %1, i32 %2, %struct.TYPE_8__* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.debug_view*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zfcp_dbf_dump*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.debug_view* %1, %struct.debug_view** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = call i64 @DEBUG_DATA(%struct.TYPE_8__* %14)
  %16 = inttoptr i64 %15 to %struct.zfcp_dbf_dump*
  store %struct.zfcp_dbf_dump* %16, %struct.zfcp_dbf_dump** %11, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %19 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %22 = call i64 @strncmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @stck_to_timespec(i32 %28, %struct.timespec* %12)
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %73

41:                                               ; preds = %5
  %42 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %46 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %52 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @zfcp_dbf_outd(i8** %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %44, i64 %47, i64 %50, i64 %53)
  %55 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %56 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %59 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %11, align 8
  %63 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %41
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i8*, i8** %13, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %13, align 8
  br label %72

72:                                               ; preds = %66, %41
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare dso_local i64 @DEBUG_DATA(%struct.TYPE_8__*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @stck_to_timespec(i32, %struct.timespec*) #1

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32, ...) #1

declare dso_local i32 @zfcp_dbf_outd(i8**, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
