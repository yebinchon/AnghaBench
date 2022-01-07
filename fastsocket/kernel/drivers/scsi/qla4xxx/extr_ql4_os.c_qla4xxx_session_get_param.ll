; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_session_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_session_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, %struct.ddb_entry* }
%struct.ddb_entry = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }

@BIDI_CHAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@LOCAL_CHAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, i32, i8*)* @qla4xxx_session_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_session_get_param(%struct.iscsi_cls_session* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.ddb_entry*, align 8
  %10 = alloca %struct.scsi_qla_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %14, i32 0, i32 0
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %15, align 8
  store %struct.iscsi_session* %16, %struct.iscsi_session** %8, align 8
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 4
  %19 = load %struct.ddb_entry*, %struct.ddb_entry** %18, align 8
  store %struct.ddb_entry* %19, %struct.ddb_entry** %9, align 8
  %20 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %21 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %20, i32 0, i32 0
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %21, align 8
  store %struct.scsi_qla_host* %22, %struct.scsi_qla_host** %10, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %64 [
    i32 129, label %24
    i32 128, label %44
  ]

24:                                               ; preds = %3
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BIDI_CHAP, align 4
  %33 = call i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host* %25, i32 %28, i32 %31, i32 %32, i32* %13)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %12, align 4
  br label %43

39:                                               ; preds = %24
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %36
  br label %69

44:                                               ; preds = %3
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LOCAL_CHAP, align 4
  %53 = call i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host* %45, i32 %48, i32 %51, i32 %52, i32* %13)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %12, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %56
  br label %69

64:                                               ; preds = %3
  %65 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @iscsi_session_get_param(%struct.iscsi_cls_session* %65, i32 %66, i8* %67)
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %63, %43
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @iscsi_session_get_param(%struct.iscsi_cls_session*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
