; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rndis_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rndis_packet }
%struct.rndis_packet = type { i64, i64 }
%struct.hv_netvsc_packet = type { i64, i32, i32, i8* }
%struct.ndis_pkt_8021q_info = type { i32, i32 }

@RNDIS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"rndis message buffer overflow detected (got %u, min %u)...dropping this message!\0A\00", align 1
@IEEE_8021Q_INFO = common dso_local global i32 0, align 4
@VLAN_TAG_PRESENT = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rndis_device*, %struct.rndis_message*, %struct.hv_netvsc_packet*)* @rndis_filter_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_filter_receive_data(%struct.rndis_device* %0, %struct.rndis_message* %1, %struct.hv_netvsc_packet* %2) #0 {
  %4 = alloca %struct.rndis_device*, align 8
  %5 = alloca %struct.rndis_message*, align 8
  %6 = alloca %struct.hv_netvsc_packet*, align 8
  %7 = alloca %struct.rndis_packet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ndis_pkt_8021q_info*, align 8
  store %struct.rndis_device* %0, %struct.rndis_device** %4, align 8
  store %struct.rndis_message* %1, %struct.rndis_message** %5, align 8
  store %struct.hv_netvsc_packet* %2, %struct.hv_netvsc_packet** %6, align 8
  %10 = load %struct.rndis_message*, %struct.rndis_message** %5, align 8
  %11 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.rndis_packet* %12, %struct.rndis_packet** %7, align 8
  %13 = load i64, i64* @RNDIS_HEADER_SIZE, align 8
  %14 = load %struct.rndis_packet*, %struct.rndis_packet** %7, align 8
  %15 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %20 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %24 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rndis_packet*, %struct.rndis_packet** %7, align 8
  %27 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %3
  %31 = load %struct.rndis_device*, %struct.rndis_device** %4, align 8
  %32 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %37 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rndis_packet*, %struct.rndis_packet** %7, align 8
  %40 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41)
  br label %90

43:                                               ; preds = %3
  %44 = load %struct.rndis_packet*, %struct.rndis_packet** %7, align 8
  %45 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %48 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %50 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %57 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %59 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.rndis_packet*, %struct.rndis_packet** %7, align 8
  %61 = load i32, i32* @IEEE_8021Q_INFO, align 4
  %62 = call %struct.ndis_pkt_8021q_info* @rndis_get_ppi(%struct.rndis_packet* %60, i32 %61)
  store %struct.ndis_pkt_8021q_info* %62, %struct.ndis_pkt_8021q_info** %9, align 8
  %63 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %9, align 8
  %64 = icmp ne %struct.ndis_pkt_8021q_info* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %43
  %66 = load i32, i32* @VLAN_TAG_PRESENT, align 4
  %67 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %9, align 8
  %68 = getelementptr inbounds %struct.ndis_pkt_8021q_info, %struct.ndis_pkt_8021q_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  %71 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %9, align 8
  %72 = getelementptr inbounds %struct.ndis_pkt_8021q_info, %struct.ndis_pkt_8021q_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %70, %75
  %77 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %78 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %82

79:                                               ; preds = %43
  %80 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %81 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %80, i32 0, i32 2
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %65
  %83 = load %struct.rndis_device*, %struct.rndis_device** %4, align 8
  %84 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %6, align 8
  %89 = call i32 @netvsc_recv_callback(i32 %87, %struct.hv_netvsc_packet* %88)
  br label %90

90:                                               ; preds = %82, %30
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*, i64, i64) #1

declare dso_local %struct.ndis_pkt_8021q_info* @rndis_get_ppi(%struct.rndis_packet*, i32) #1

declare dso_local i32 @netvsc_recv_callback(i32, %struct.hv_netvsc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
