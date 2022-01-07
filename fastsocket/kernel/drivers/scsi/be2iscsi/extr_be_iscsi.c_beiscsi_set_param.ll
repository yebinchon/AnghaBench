; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i64, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.beiscsi_hba = type { i32 }
%struct.beiscsi_conn = type { %struct.beiscsi_hba* }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BS_%d : In beiscsi_conn_set_param, param= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_set_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.beiscsi_hba*, align 8
  %13 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %10, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 3
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %11, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %12, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.beiscsi_conn*
  %24 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %23, i32 0, i32 0
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %24, align 8
  store %struct.beiscsi_hba* %25, %struct.beiscsi_hba** %12, align 8
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %12, align 8
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @beiscsi_log(%struct.beiscsi_hba* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %31, i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %85

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %83 [
    i32 131, label %42
    i32 129, label %51
    i32 130, label %60
    i32 128, label %69
  ]

42:                                               ; preds = %40
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %44 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 8192
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %49 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %48, i32 0, i32 0
  store i32 8192, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %84

51:                                               ; preds = %40
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 65536
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 0
  store i32 65536, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %84

60:                                               ; preds = %40
  %61 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %62 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 262144
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %67 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %66, i32 0, i32 1
  store i32 262144, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %84

69:                                               ; preds = %40
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 65536
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 1
  store i32 65536, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %40, %82
  store i32 0, i32* %5, align 4
  br label %85

84:                                               ; preds = %68, %59, %50
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %38
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
