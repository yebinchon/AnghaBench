; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64, i32, i32, i64, i32 (%struct.zfcp_fsf_req*)*, i32 }

@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i64 0, align 8
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_req_complete(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %3 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FSF_QTCB_UNSOLICITED_STATUS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = call i32 @zfcp_fsf_status_read_handler(%struct.zfcp_fsf_req* %12)
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 5
  %17 = call i32 @del_timer(i32* %16)
  %18 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %19 = call i32 @zfcp_fsf_protstatus_eval(%struct.zfcp_fsf_req* %18)
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = call i32 @zfcp_fsf_fsfstatus_eval(%struct.zfcp_fsf_req* %20)
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %22, i32 0, i32 4
  %24 = load i32 (%struct.zfcp_fsf_req*)*, i32 (%struct.zfcp_fsf_req*)** %23, align 8
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = call i32 %24(%struct.zfcp_fsf_req* %25)
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @zfcp_erp_notify(i64 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %14
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %38 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %46 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %45)
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 2
  %50 = call i32 @complete(i32* %49)
  br label %51

51:                                               ; preds = %11, %47, %44
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_fsf_status_read_handler(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @zfcp_fsf_protstatus_eval(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_fsfstatus_eval(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_notify(i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
