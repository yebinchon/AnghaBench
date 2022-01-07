; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { %struct.beiscsi_endpoint*, i32 }
%struct.beiscsi_endpoint = type { i32, %struct.beiscsi_conn*, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BS_%d : beiscsi_ep->hba=%p not equal to phba=%p\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"BS_%d : beiscsi_conn=%p conn=%p ep_cid=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.beiscsi_conn*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.beiscsi_hba*, align 8
  %14 = alloca %struct.beiscsi_endpoint*, align 8
  %15 = alloca %struct.iscsi_endpoint*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %10, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %20, align 8
  store %struct.beiscsi_conn* %21, %struct.beiscsi_conn** %11, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %23 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %12, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %25 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %24)
  store %struct.beiscsi_hba* %25, %struct.beiscsi_hba** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %26)
  store %struct.iscsi_endpoint* %27, %struct.iscsi_endpoint** %15, align 8
  %28 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %29 = icmp ne %struct.iscsi_endpoint* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %4
  %34 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %35 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %34, i32 0, i32 0
  %36 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %35, align 8
  store %struct.beiscsi_endpoint* %36, %struct.beiscsi_endpoint** %14, align 8
  %37 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %38 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @iscsi_conn_bind(%struct.iscsi_cls_session* %37, %struct.iscsi_cls_conn* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %91

45:                                               ; preds = %33
  %46 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %47 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %46, i32 0, i32 2
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %47, align 8
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %50 = icmp ne %struct.beiscsi_hba* %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %55 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %56 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %55, i32 0, i32 2
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %56, align 8
  %58 = bitcast %struct.beiscsi_hba* %57 to %struct.beiscsi_conn*
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %60 = bitcast %struct.beiscsi_hba* %59 to %struct.iscsi_conn*
  %61 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_conn*, %struct.iscsi_conn*, ...) @beiscsi_log(%struct.beiscsi_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.beiscsi_conn* %58, %struct.iscsi_conn* %60)
  %62 = load i32, i32* @EEXIST, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %91

64:                                               ; preds = %45
  %65 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %66 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %69 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %71 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %72 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %71, i32 0, i32 0
  store %struct.beiscsi_endpoint* %70, %struct.beiscsi_endpoint** %72, align 8
  %73 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %74 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %75 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %74, i32 0, i32 1
  store %struct.beiscsi_conn* %73, %struct.beiscsi_conn** %75, align 8
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %79 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %81 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %82 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_conn*, %struct.iscsi_conn*, ...) @beiscsi_log(%struct.beiscsi_hba* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.beiscsi_conn* %79, %struct.iscsi_conn* %80, i32 %83)
  %85 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %86 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %87 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %14, align 8
  %88 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @beiscsi_bindconn_cid(%struct.beiscsi_hba* %85, %struct.beiscsi_conn* %86, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %64, %51, %42, %30
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i64 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_conn*, %struct.iscsi_conn*, ...) #1

declare dso_local i32 @beiscsi_bindconn_cid(%struct.beiscsi_hba*, %struct.beiscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
