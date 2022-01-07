; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { i32, i32*, i32, %struct.bnx2i_hba*, %struct.iscsi_cls_conn* }
%struct.bnx2i_hba = type { i32 }
%struct.iscsi_cls_session = type { i32 }
%struct.Scsi_Host = type { i32 }

@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"conn_new: login resc alloc failed!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @bnx2i_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @bnx2i_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.bnx2i_hba*, align 8
  %8 = alloca %struct.bnx2i_conn*, align 8
  %9 = alloca %struct.iscsi_cls_conn*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %12 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = call %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host* %13)
  store %struct.bnx2i_hba* %14, %struct.bnx2i_hba** %7, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %15, i32 40, i32 %16)
  store %struct.iscsi_cls_conn* %17, %struct.iscsi_cls_conn** %9, align 8
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %19 = icmp ne %struct.iscsi_cls_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %22, i32 0, i32 0
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %23, align 8
  store %struct.iscsi_conn* %24, %struct.iscsi_conn** %10, align 8
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %26, align 8
  store %struct.bnx2i_conn* %27, %struct.bnx2i_conn** %8, align 8
  %28 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %29 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %29, i32 0, i32 4
  store %struct.iscsi_cls_conn* %28, %struct.iscsi_cls_conn** %30, align 8
  %31 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %32 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %32, i32 0, i32 3
  store %struct.bnx2i_hba* %31, %struct.bnx2i_hba** %33, align 8
  %34 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %35 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %34, i32 0, i32 2
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %38 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %40 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %39, i32 0, i32 0
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %43 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %8, align 8
  %44 = call i64 @bnx2i_conn_alloc_login_resources(%struct.bnx2i_hba* %42, %struct.bnx2i_conn* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load i32, i32* @KERN_ALERT, align 4
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %49 = call i32 @iscsi_conn_printk(i32 %47, %struct.iscsi_conn* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %52

50:                                               ; preds = %21
  %51 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  store %struct.iscsi_cls_conn* %51, %struct.iscsi_cls_conn** %3, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %54 = call i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn* %53)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %55

55:                                               ; preds = %52, %50, %20
  %56 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %56
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @bnx2i_conn_alloc_login_resources(%struct.bnx2i_hba*, %struct.bnx2i_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
