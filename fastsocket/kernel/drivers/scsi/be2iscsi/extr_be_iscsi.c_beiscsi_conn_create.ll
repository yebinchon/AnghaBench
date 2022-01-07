; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { %struct.beiscsi_session*, %struct.iscsi_conn*, %struct.beiscsi_hba*, i32* }
%struct.beiscsi_session = type { i32 }
%struct.beiscsi_hba = type { i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.beiscsi_session* }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"BS_%d : In beiscsi_conn_create ,cidfrom iscsi layer=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @beiscsi_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_cls_conn*, align 8
  %9 = alloca %struct.beiscsi_conn*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.beiscsi_session*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %14 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %7, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %16 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %6, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @beiscsi_log(%struct.beiscsi_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %22, i32 32, i32 %23)
  store %struct.iscsi_cls_conn* %24, %struct.iscsi_cls_conn** %8, align 8
  %25 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %26 = icmp ne %struct.iscsi_cls_conn* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %29, i32 0, i32 0
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %30, align 8
  store %struct.iscsi_conn* %31, %struct.iscsi_conn** %10, align 8
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %33, align 8
  store %struct.beiscsi_conn* %34, %struct.beiscsi_conn** %9, align 8
  %35 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %9, align 8
  %36 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %38 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %9, align 8
  %39 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %38, i32 0, i32 2
  store %struct.beiscsi_hba* %37, %struct.beiscsi_hba** %39, align 8
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %41 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %9, align 8
  %42 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %41, i32 0, i32 1
  store %struct.iscsi_conn* %40, %struct.iscsi_conn** %42, align 8
  %43 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %43, i32 0, i32 0
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %44, align 8
  store %struct.iscsi_session* %45, %struct.iscsi_session** %11, align 8
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 0
  %48 = load %struct.beiscsi_session*, %struct.beiscsi_session** %47, align 8
  store %struct.beiscsi_session* %48, %struct.beiscsi_session** %12, align 8
  %49 = load %struct.beiscsi_session*, %struct.beiscsi_session** %12, align 8
  %50 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %9, align 8
  %51 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %50, i32 0, i32 0
  store %struct.beiscsi_session* %49, %struct.beiscsi_session** %51, align 8
  %52 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  store %struct.iscsi_cls_conn* %52, %struct.iscsi_cls_conn** %3, align 8
  br label %53

53:                                               ; preds = %28, %27
  %54 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %54
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
