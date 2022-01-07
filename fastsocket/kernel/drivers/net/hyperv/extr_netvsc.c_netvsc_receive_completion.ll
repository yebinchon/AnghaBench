; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_receive_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_receive_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_netvsc_packet = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.hv_device* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@NVSP_STAT_NONE = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i64 0, align 8
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @netvsc_receive_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_receive_completion(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hv_netvsc_packet*, align 8
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.hv_netvsc_packet*
  store %struct.hv_netvsc_packet* %12, %struct.hv_netvsc_packet** %3, align 8
  %13 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %14 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %13, i32 0, i32 4
  %15 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  store %struct.hv_device* %15, %struct.hv_device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @NVSP_STAT_NONE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %18 = call %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device* %17)
  store %struct.netvsc_device* %18, %struct.netvsc_device** %5, align 8
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %20 = icmp ne %struct.netvsc_device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %89

22:                                               ; preds = %1
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %24 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %23, i32 0, i32 2
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %9, align 8
  %26 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %27 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %31 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NVSP_STAT_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load i32, i32* @NVSP_STAT_FAIL, align 4
  %37 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %38 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %43 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %49 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  %55 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %56 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %61 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %66 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %70 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %54, %41
  %73 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %3, align 8
  %74 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %73, i32 0, i32 1
  %75 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %76 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %75, i32 0, i32 1
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %79 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @netvsc_send_recv_completion(%struct.hv_device* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %21, %84, %72
  ret void
}

declare dso_local %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netvsc_send_recv_completion(%struct.hv_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
