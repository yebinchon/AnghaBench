; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_start_erp_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_start_erp_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@zfcp_erp_timeout_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_start_erp_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %3 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* @zfcp_erp_timeout_handler, align 4
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 30, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %28, i32 0, i32 0
  %30 = call i32 @add_timer(%struct.TYPE_2__* %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
