; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c___efx_rx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c___efx_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.TYPE_2__*, i32, i32, %struct.efx_nic* }
%struct.TYPE_2__ = type { i32 }
%struct.efx_nic = type { i32, i32 }
%struct.efx_rx_buffer = type { i32, i32 }

@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@EFX_RX_PKT_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__efx_rx_packet(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_rx_buffer*, align 8
  %5 = alloca i32*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %6 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %7 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %6, i32 0, i32 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %10 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %9, i32 0, i32 3
  %11 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %12 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.efx_rx_buffer* @efx_rx_buffer(i32* %10, i32 %13)
  store %struct.efx_rx_buffer* %14, %struct.efx_rx_buffer** %4, align 8
  %15 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %16 = call i32* @efx_rx_buf_va(%struct.efx_rx_buffer* %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @efx_loopback_rx_packet(%struct.efx_nic* %23, i32* %24, i32 %27)
  %29 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %30 = call i32 @efx_free_rx_buffer(%struct.efx_rx_buffer* %29)
  br label %78

31:                                               ; preds = %1
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %31
  %48 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EFX_RX_PKT_TCP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %56 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %63 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %64 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %65 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @efx_rx_packet_gro(%struct.efx_channel* %62, %struct.efx_rx_buffer* %63, i32 %66, i32* %67)
  br label %77

69:                                               ; preds = %54, %47
  %70 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %73 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %74 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @efx_rx_deliver(%struct.efx_channel* %70, i32* %71, %struct.efx_rx_buffer* %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %61
  br label %78

78:                                               ; preds = %77, %22
  %79 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %80 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  ret void
}

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(i32*, i32) #1

declare dso_local i32* @efx_rx_buf_va(%struct.efx_rx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efx_loopback_rx_packet(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @efx_free_rx_buffer(%struct.efx_rx_buffer*) #1

declare dso_local i32 @efx_rx_packet_gro(%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*) #1

declare dso_local i32 @efx_rx_deliver(%struct.efx_channel*, i32*, %struct.efx_rx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
