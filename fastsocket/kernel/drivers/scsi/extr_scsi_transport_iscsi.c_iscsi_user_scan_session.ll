; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_user_scan_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_user_scan_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iscsi_scan_data = type { i64, i64, i32 }
%struct.iscsi_cls_session = type { i64, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Scanning session\0A\00", align 1
@ISCSI_SESSION_LOGGED_IN = common dso_local global i64 0, align 8
@ISCSI_MAX_TARGET = common dso_local global i32 0, align 4
@SCAN_WILD_CARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Completed session scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @iscsi_user_scan_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_user_scan_session(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_scan_data*, align 8
  %7 = alloca %struct.iscsi_cls_session*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.iscsi_cls_host*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.iscsi_scan_data*
  store %struct.iscsi_scan_data* %13, %struct.iscsi_scan_data** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @iscsi_is_session_dev(%struct.device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.iscsi_cls_session* @iscsi_dev_to_session(%struct.device* %19)
  store %struct.iscsi_cls_session* %20, %struct.iscsi_cls_session** %7, align 8
  %21 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %22 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %24 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %23)
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %8, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %26, align 8
  store %struct.iscsi_cls_host* %27, %struct.iscsi_cls_host** %9, align 8
  %28 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %32 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %31, i32 0, i32 3
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ISCSI_SESSION_LOGGED_IN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %41, i32 0, i32 3
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %90

45:                                               ; preds = %18
  %46 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %47 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %50 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %49, i32 0, i32 3
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %45
  %57 = load %struct.iscsi_scan_data*, %struct.iscsi_scan_data** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_scan_data, %struct.iscsi_scan_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SCAN_WILD_CARD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.iscsi_scan_data*, %struct.iscsi_scan_data** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_scan_data, %struct.iscsi_scan_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %62, %56
  %68 = load %struct.iscsi_scan_data*, %struct.iscsi_scan_data** %6, align 8
  %69 = getelementptr inbounds %struct.iscsi_scan_data, %struct.iscsi_scan_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SCAN_WILD_CARD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load %struct.iscsi_scan_data*, %struct.iscsi_scan_data** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_scan_data, %struct.iscsi_scan_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73, %67
  %81 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %82 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %81, i32 0, i32 2
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.iscsi_scan_data*, %struct.iscsi_scan_data** %6, align 8
  %85 = getelementptr inbounds %struct.iscsi_scan_data, %struct.iscsi_scan_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @scsi_scan_target(i32* %82, i32 0, i32 %83, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %80, %73, %62
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %40
  %91 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %92 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %95 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @iscsi_is_session_dev(%struct.device*) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_dev_to_session(%struct.device*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_scan_target(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
