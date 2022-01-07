; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_create_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }
%struct.cxgbi_endpoint = type { %struct.cxgbi_hba* }
%struct.cxgbi_hba = type { %struct.TYPE_2__*, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"missing endpoint.\0A\00", align 1
@ISCSI_MAX_TARGET = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ep 0x%p, cls sess 0x%p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_session* @cxgbi_create_session(%struct.iscsi_endpoint* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgbi_endpoint*, align 8
  %11 = alloca %struct.cxgbi_hba*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.iscsi_cls_session*, align 8
  %14 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %16 = icmp ne %struct.iscsi_endpoint* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %20, i32 0, i32 0
  %22 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %21, align 8
  store %struct.cxgbi_endpoint* %22, %struct.cxgbi_endpoint** %10, align 8
  %23 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %10, align 8
  %24 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %23, i32 0, i32 0
  %25 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %24, align 8
  store %struct.cxgbi_hba* %25, %struct.cxgbi_hba** %11, align 8
  %26 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %11, align 8
  %27 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %26, i32 0, i32 1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %27, align 8
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %12, align 8
  %29 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %11, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %31 = call %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host* %30)
  %32 = icmp ne %struct.cxgbi_hba* %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %11, align 8
  %36 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %44 = call %struct.iscsi_cls_session* @iscsi_session_setup(i32 %39, %struct.Scsi_Host* %40, i32 %41, i32 0, i32 8, i32 %42, i32 %43)
  store %struct.iscsi_cls_session* %44, %struct.iscsi_cls_session** %13, align 8
  %45 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %46 = icmp ne %struct.iscsi_cls_session* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %19
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %66

48:                                               ; preds = %19
  %49 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %50 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %49, i32 0, i32 0
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %50, align 8
  store %struct.iscsi_session* %51, %struct.iscsi_session** %14, align 8
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  %53 = call i64 @iscsi_tcp_r2tpool_alloc(%struct.iscsi_session* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %63

56:                                               ; preds = %48
  %57 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %60 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %61 = call i32 @log_debug(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_endpoint* %59, %struct.iscsi_cls_session* %60)
  %62 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  store %struct.iscsi_cls_session* %62, %struct.iscsi_cls_session** %5, align 8
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %65 = call i32 @iscsi_session_teardown(%struct.iscsi_cls_session* %64)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %66

66:                                               ; preds = %63, %56, %47, %17
  %67 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  ret %struct.iscsi_cls_session* %67
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_session_setup(i32, %struct.Scsi_Host*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @iscsi_tcp_r2tpool_alloc(%struct.iscsi_session*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_endpoint*, %struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_session_teardown(%struct.iscsi_cls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
