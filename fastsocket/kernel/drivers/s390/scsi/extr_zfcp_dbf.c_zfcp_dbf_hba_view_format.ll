; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.zfcp_dbf_hba_record = type { i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tag2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"resp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"qdio\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"berr\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.debug_view*, i8*, i8*)* @zfcp_dbf_hba_view_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_hba_view_format(i32* %0, %struct.debug_view* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.debug_view*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.debug_view* %1, %struct.debug_view** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.zfcp_dbf_hba_record*
  store %struct.zfcp_dbf_hba_record* %13, %struct.zfcp_dbf_hba_record** %10, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %11, align 8
  %15 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %19 = call i64 @strncmp(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %110

22:                                               ; preds = %4
  %23 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @zfcp_dbf_tag(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %28 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @isalpha(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %36 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @zfcp_dbf_tag(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %41 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %44 = call i64 @strncmp(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %48 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = call i32 @zfcp_dbf_hba_view_response(i8** %11, i32* %49)
  br label %90

51:                                               ; preds = %39
  %52 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %56 = call i64 @strncmp(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i32 @zfcp_dbf_hba_view_status(i8** %11, i32* %61)
  br label %89

63:                                               ; preds = %51
  %64 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %65 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %68 = call i64 @strncmp(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %72 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = call i32 @zfcp_dbf_hba_view_qdio(i8** %11, i32* %73)
  br label %88

75:                                               ; preds = %63
  %76 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %77 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %80 = call i64 @strncmp(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %84 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @zfcp_dbf_hba_view_berr(i8** %11, i32* %85)
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %46
  %91 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %10, align 8
  %92 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %95 = call i64 @strncmp(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i8*, i8** %11, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %11, align 8
  br label %103

103:                                              ; preds = %97, %90
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %21
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_tag(i8**, i8*, i32*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @zfcp_dbf_hba_view_response(i8**, i32*) #1

declare dso_local i32 @zfcp_dbf_hba_view_status(i8**, i32*) #1

declare dso_local i32 @zfcp_dbf_hba_view_qdio(i8**, i32*) #1

declare dso_local i32 @zfcp_dbf_hba_view_berr(i8**, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
