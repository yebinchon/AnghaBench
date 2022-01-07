; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_sbal_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_sbal_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, %struct.zfcp_adapter*, i32, i32 }
%struct.zfcp_adapter = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsrsg_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_qdio*)* @zfcp_fsf_req_sbal_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  %6 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %4, align 8
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %13 = call i32 @zfcp_fsf_sbal_check(%struct.zfcp_qdio* %12)
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 5, %17
  %19 = call i64 @wait_event_interruptible_lock_bh_timeout(i32 %11, i32 %13, i32 %16, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %20, i32 0, i32 1
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %21, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %1
  %32 = load i64, i64* %5, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %47

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %43 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %42, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %34, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @wait_event_interruptible_lock_bh_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @zfcp_fsf_sbal_check(%struct.zfcp_qdio*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
