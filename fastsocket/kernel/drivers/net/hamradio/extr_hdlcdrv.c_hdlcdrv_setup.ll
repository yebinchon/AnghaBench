; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32* }
%struct.hdlcdrv_state = type { i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.hdlcdrv_channel_params, %struct.TYPE_8__, i64 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }

@hdlcdrv_setup.dflt_ch_params = internal constant %struct.hdlcdrv_channel_params { i32 20, i32 2, i32 10, i32 40, i32 0, i32 0 }, align 4
@hdlcdrv_netdev = common dso_local global i32 0, align 4
@ax25_header_ops = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_DEF_PACLEN = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ax25_bcast = common dso_local global i32 0, align 4
@ax25_defaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hdlcdrv_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcdrv_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hdlcdrv_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hdlcdrv_state* @netdev_priv(%struct.net_device* %4)
  store %struct.hdlcdrv_state* %5, %struct.hdlcdrv_state** %3, align 8
  %6 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %7 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %6, i32 0, i32 4
  %8 = bitcast %struct.hdlcdrv_channel_params* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 4 bitcast (%struct.hdlcdrv_channel_params* @hdlcdrv_setup.dflt_ch_params to i8*), i64 24, i1 false)
  %9 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %10 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %12 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %17 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %21 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %25 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %28 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %31 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %36 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %40 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %44 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %47 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %50 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %53 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %56 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %59 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %62 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %65 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.hdlcdrv_channel_params, %struct.hdlcdrv_channel_params* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %69 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %72 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %75 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 8
  store i32* @hdlcdrv_netdev, i32** %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 7
  store i32* @ax25_header_ops, i32** %79, align 8
  %80 = load i32, i32* @ARPHRD_AX25, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %84 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @AX25_DEF_PACLEN, align 4
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @AX25_ADDR_LEN, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AX25_ADDR_LEN, align 4
  %98 = call i32 @memcpy(i32 %96, i32* @ax25_bcast, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AX25_ADDR_LEN, align 4
  %103 = call i32 @memcpy(i32 %101, i32* @ax25_defaddr, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  store i32 16, i32* %105, align 8
  ret void
}

declare dso_local %struct.hdlcdrv_state* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
