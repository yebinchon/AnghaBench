; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.iscsi_cls_host = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.iscsi_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"iscsi_host%d\00", align 1
@iscsi_bsg_request_fn = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"bsg interface failed to initialize - no request queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_cls_host*)* @iscsi_bsg_host_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_bsg_host_add(%struct.Scsi_Host* %0, %struct.iscsi_cls_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.iscsi_cls_host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iscsi_internal*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.iscsi_cls_host* %1, %struct.iscsi_cls_host** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.iscsi_internal* @to_iscsi_internal(i32 %15)
  store %struct.iscsi_internal* %16, %struct.iscsi_internal** %7, align 8
  %17 = load %struct.iscsi_internal*, %struct.iscsi_internal** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i8* %27, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = load i32, i32* @iscsi_bsg_request_fn, align 4
  %34 = call %struct.request_queue* @__scsi_alloc_queue(%struct.Scsi_Host* %32, i32 %33)
  store %struct.request_queue* %34, %struct.request_queue** %8, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %36 = icmp ne %struct.request_queue* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %44 = call i32 @bsg_setup_queue(%struct.device* %41, %struct.request_queue* %42, i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %50 = call i32 @shost_printk(i32 %48, %struct.Scsi_Host* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %52 = call i32 @blk_cleanup_queue(%struct.request_queue* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %56 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %56, i32 0, i32 0
  store %struct.request_queue* %55, %struct.request_queue** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %47, %37, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.request_queue* @__scsi_alloc_queue(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @bsg_setup_queue(%struct.device*, %struct.request_queue*, i8*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
