; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_request* }
%struct.iscsi_bsg_reply = type { i32, i64 }
%struct.iscsi_bsg_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.Scsi_Host = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.iscsi_internal = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.bsg_job*)* }

@ENOMSG = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @iscsi_bsg_host_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_bsg_host_dispatch(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.iscsi_bsg_request*, align 8
  %6 = alloca %struct.iscsi_bsg_reply*, align 8
  %7 = alloca %struct.iscsi_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %11 = call %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 3
  %14 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  store %struct.iscsi_bsg_request* %14, %struct.iscsi_bsg_request** %5, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 2
  %17 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %16, align 8
  store %struct.iscsi_bsg_reply* %17, %struct.iscsi_bsg_reply** %6, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.iscsi_internal* @to_iscsi_internal(i32 %20)
  store %struct.iscsi_internal* %21, %struct.iscsi_internal** %7, align 8
  store i32 4, i32* %8, align 4
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMSG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %85

30:                                               ; preds = %1
  %31 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %61 [
    i32 128, label %34
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  %46 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45, %34
  %58 = load i32, i32* @ESRCH, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %85

60:                                               ; preds = %45
  br label %64

61:                                               ; preds = %30
  %62 = load i32, i32* @EBADR, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %85

64:                                               ; preds = %60
  %65 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %66 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOMSG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.iscsi_internal*, %struct.iscsi_internal** %7, align 8
  %75 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32 (%struct.bsg_job*)*, i32 (%struct.bsg_job*)** %77, align 8
  %79 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %80 = call i32 %78(%struct.bsg_job* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %103

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %70, %61, %57, %27
  %86 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %87 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %89, 4
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %99 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %98, i32 0, i32 1
  store i32 4, i32* %99, align 4
  %100 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @bsg_job_done(%struct.bsg_job* %100, i32 %101, i32 0)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %85, %83
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
