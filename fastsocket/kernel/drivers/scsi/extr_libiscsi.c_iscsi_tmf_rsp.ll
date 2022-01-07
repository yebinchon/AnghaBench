; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_tmf_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_tmf_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, i32, i64 }
%struct.iscsi_hdr = type { i32 }
%struct.iscsi_tm_rsp = type { i64 }

@TMF_QUEUED = common dso_local global i64 0, align 8
@ISCSI_TMF_RSP_COMPLETE = common dso_local global i64 0, align 8
@TMF_SUCCESS = common dso_local global i64 0, align 8
@ISCSI_TMF_RSP_NO_TASK = common dso_local global i64 0, align 8
@TMF_NOT_FOUND = common dso_local global i64 0, align 8
@TMF_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, %struct.iscsi_hdr*)* @iscsi_tmf_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_tmf_rsp(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_hdr*, align 8
  %5 = alloca %struct.iscsi_tm_rsp*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %4, align 8
  %6 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %4, align 8
  %7 = bitcast %struct.iscsi_hdr* %6 to %struct.iscsi_tm_rsp*
  store %struct.iscsi_tm_rsp* %7, %struct.iscsi_tm_rsp** %5, align 8
  %8 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32_to_cpu(i32 %10)
  %12 = add nsw i64 %11, 1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TMF_QUEUED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISCSI_TMF_RSP_COMPLETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @TMF_SUCCESS, align 8
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %50

35:                                               ; preds = %25
  %36 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ISCSI_TMF_RSP_NO_TASK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @TMF_NOT_FOUND, align 8
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load i64, i64* @TMF_FAILED, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 1
  %53 = call i32 @wake_up(i32* %52)
  br label %54

54:                                               ; preds = %50, %24
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
