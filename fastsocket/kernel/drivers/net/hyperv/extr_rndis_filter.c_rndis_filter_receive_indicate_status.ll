; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_indicate_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_indicate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rndis_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rndis_indicate_status }
%struct.rndis_indicate_status = type { i64 }

@RNDIS_STATUS_MEDIA_CONNECT = common dso_local global i64 0, align 8
@RNDIS_STATUS_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rndis_device*, %struct.rndis_message*)* @rndis_filter_receive_indicate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_filter_receive_indicate_status(%struct.rndis_device* %0, %struct.rndis_message* %1) #0 {
  %3 = alloca %struct.rndis_device*, align 8
  %4 = alloca %struct.rndis_message*, align 8
  %5 = alloca %struct.rndis_indicate_status*, align 8
  store %struct.rndis_device* %0, %struct.rndis_device** %3, align 8
  store %struct.rndis_message* %1, %struct.rndis_message** %4, align 8
  %6 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %7 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.rndis_indicate_status* %8, %struct.rndis_indicate_status** %5, align 8
  %9 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %10 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RNDIS_STATUS_MEDIA_CONNECT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %16 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netvsc_linkstatus_callback(i32 %19, i32 1)
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %23 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RNDIS_STATUS_MEDIA_DISCONNECT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %29 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netvsc_linkstatus_callback(i32 %32, i32 0)
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @netvsc_linkstatus_callback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
