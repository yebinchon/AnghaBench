; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_generic_ct_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_generic_ct_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_ct_fc_job = type { %struct.TYPE_8__, %struct.fc_bsg_job* }
%struct.TYPE_8__ = type { i32 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, i32, %struct.TYPE_5__, %struct.zfcp_send_ct*, %struct.fc_bsg_reply* }
%struct.TYPE_5__ = type { i32 }
%struct.zfcp_send_ct = type { i64 }
%struct.fc_bsg_reply = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FC_RQST_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @zfcp_fc_generic_ct_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_generic_ct_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.zfcp_ct_fc_job*, align 8
  %4 = alloca %struct.fc_bsg_job*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.zfcp_send_ct*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.zfcp_ct_fc_job*
  store %struct.zfcp_ct_fc_job* %8, %struct.zfcp_ct_fc_job** %3, align 8
  %9 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %9, i32 0, i32 1
  %11 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  store %struct.fc_bsg_job* %11, %struct.fc_bsg_job** %4, align 8
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %13 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %12, i32 0, i32 4
  %14 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  store %struct.fc_bsg_reply* %14, %struct.fc_bsg_reply** %5, align 8
  %15 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %16 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %15, i32 0, i32 3
  %17 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %16, align 8
  store %struct.zfcp_send_ct* %17, %struct.zfcp_send_ct** %6, align 8
  %18 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %23 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %25 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %26 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %6, align 8
  %30 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  %39 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @FC_RQST_STATE_DONE, align 4
  %42 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %43 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 0
  %46 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %45, align 8
  %47 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %48 = call i32 %46(%struct.fc_bsg_job* %47)
  %49 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @zfcp_fc_wka_port_put(i32 %52)
  %54 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %3, align 8
  %55 = call i32 @kfree(%struct.zfcp_ct_fc_job* %54)
  ret void
}

declare dso_local i32 @zfcp_fc_wka_port_put(i32) #1

declare dso_local i32 @kfree(%struct.zfcp_ct_fc_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
