; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_enable_fast_fail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_enable_fast_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.viosrp_fast_fail = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.srp_event_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.viosrp_fast_fail }

@fast_fail = common dso_local global i32 0, align 4
@fast_fail_rsp = common dso_local global i32 0, align 4
@VIOSRP_MAD_FORMAT = common dso_local global i32 0, align 4
@info_timeout = common dso_local global i32 0, align 4
@VIOSRP_ENABLE_FAST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsi_host_data*)* @enable_fast_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fast_fail(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.viosrp_fast_fail*, align 8
  %7 = alloca %struct.srp_event_struct*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %3, align 8
  %8 = load i32, i32* @fast_fail, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %12 = call i32 @send_mad_capabilities(%struct.ibmvscsi_host_data* %11)
  store i32 0, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %14, i32 0, i32 1
  %16 = call %struct.srp_event_struct* @get_event_struct(i32* %15)
  store %struct.srp_event_struct* %16, %struct.srp_event_struct** %7, align 8
  %17 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %18 = icmp ne %struct.srp_event_struct* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %23 = load i32, i32* @fast_fail_rsp, align 4
  %24 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %25 = load i32, i32* @info_timeout, align 4
  %26 = call i32 @init_event_struct(%struct.srp_event_struct* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %28 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.viosrp_fast_fail* %30, %struct.viosrp_fast_fail** %6, align 8
  %31 = load %struct.viosrp_fast_fail*, %struct.viosrp_fast_fail** %6, align 8
  %32 = call i32 @memset(%struct.viosrp_fast_fail* %31, i32 0, i32 8)
  %33 = load i32, i32* @VIOSRP_ENABLE_FAST_FAIL, align 4
  %34 = load %struct.viosrp_fast_fail*, %struct.viosrp_fast_fail** %6, align 8
  %35 = getelementptr inbounds %struct.viosrp_fast_fail, %struct.viosrp_fast_fail* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.viosrp_fast_fail*, %struct.viosrp_fast_fail** %6, align 8
  %38 = getelementptr inbounds %struct.viosrp_fast_fail, %struct.viosrp_fast_fail* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 8, i32* %39, align 4
  %40 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32 %44, i64 %45)
  %47 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %48 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %49 = load i32, i32* @info_timeout, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct* %47, %struct.ibmvscsi_host_data* %48, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %13, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @send_mad_capabilities(%struct.ibmvscsi_host_data*) #1

declare dso_local %struct.srp_event_struct* @get_event_struct(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_event_struct(%struct.srp_event_struct*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.viosrp_fast_fail*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
