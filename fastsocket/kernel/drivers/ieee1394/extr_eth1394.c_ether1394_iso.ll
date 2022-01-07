; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__, %struct.hpsb_iso_packet_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hpsb_iso_packet_info = type { i32, i32, i64 }
%struct.eth1394_host_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.eth1394_priv = type { i32 }

@eth1394_highlevel = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No net device at fw-host%d\0A\00", align 1
@ETHER1394_GASP_SPECIFIER_ID = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@ALL_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*)* @ether1394_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_iso(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eth1394_host_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.eth1394_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpsb_iso_packet_info*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %14 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %15 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call %struct.eth1394_host_info* @hpsb_get_hostinfo(i32* @eth1394_highlevel, %struct.TYPE_6__* %16)
  store %struct.eth1394_host_info* %17, %struct.eth1394_host_info** %5, align 8
  %18 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %5, align 8
  %19 = icmp ne %struct.eth1394_host_info* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %27 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ETH1394_PRINT_G(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %125

32:                                               ; preds = %1
  %33 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %5, align 8
  %34 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %33, i32 0, i32 0
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %6, align 8
  %36 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %37 = call i32 @hpsb_iso_n_ready(%struct.hpsb_iso* %36)
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %118, %32
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %38
  %43 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %44 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %43, i32 0, i32 4
  %45 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %44, align 8
  %46 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %47 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %52 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %45, i64 %55
  store %struct.hpsb_iso_packet_info* %56, %struct.hpsb_iso_packet_info** %13, align 8
  %57 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %58 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %13, align 8
  %62 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  store i8* %68, i8** %4, align 8
  %69 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %13, align 8
  %70 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 8
  store i32 %72, i32* %8, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = and i32 %76, 65535
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = and i32 %82, -16777216
  %84 = lshr i32 %83, 24
  %85 = or i32 %78, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be32_to_cpu(i32 %88)
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %10, align 4
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = call %struct.eth1394_priv* @netdev_priv(%struct.net_device* %91)
  store %struct.eth1394_priv* %92, %struct.eth1394_priv** %7, align 8
  %93 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %13, align 8
  %94 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %97 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 63
  %103 = icmp ne i32 %95, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %42
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ETHER1394_GASP_SPECIFIER_ID, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %42
  br label %118

109:                                              ; preds = %104
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @LOCAL_BUS, align 4
  %113 = load i32, i32* @ALL_NODES, align 4
  %114 = or i32 %112, %113
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @ether1394_data_handler(%struct.net_device* %110, i32 %111, i32 %114, i8* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %108
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %38

121:                                              ; preds = %38
  %122 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @hpsb_iso_recv_release_packets(%struct.hpsb_iso* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %24
  ret void
}

declare dso_local %struct.eth1394_host_info* @hpsb_get_hostinfo(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ETH1394_PRINT_G(i32, i8*, i32) #1

declare dso_local i32 @hpsb_iso_n_ready(%struct.hpsb_iso*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.eth1394_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether1394_data_handler(%struct.net_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsb_iso_recv_release_packets(%struct.hpsb_iso*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
