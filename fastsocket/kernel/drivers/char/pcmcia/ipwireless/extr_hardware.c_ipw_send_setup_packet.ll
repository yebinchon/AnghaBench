; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipw_send_setup_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipw_send_setup_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32 }
%struct.ipw_setup_get_version_query_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ADDR_SETUP_PROT = common dso_local global i32 0, align 4
@TL_PROTOCOLID_SETUP = common dso_local global i32 0, align 4
@TL_SETUP_SIGNO_GET_VERSION_QRY = common dso_local global i32 0, align 4
@PRIO_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*)* @ipw_send_setup_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_send_setup_packet(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_hardware*, align 8
  %3 = alloca %struct.ipw_setup_get_version_query_packet*, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %2, align 8
  %4 = load i32, i32* @ADDR_SETUP_PROT, align 4
  %5 = load i32, i32* @TL_PROTOCOLID_SETUP, align 4
  %6 = load i32, i32* @TL_SETUP_SIGNO_GET_VERSION_QRY, align 4
  %7 = call %struct.ipw_setup_get_version_query_packet* @alloc_ctrl_packet(i32 4, i32 %4, i32 %5, i32 %6)
  store %struct.ipw_setup_get_version_query_packet* %7, %struct.ipw_setup_get_version_query_packet** %3, align 8
  %8 = load %struct.ipw_setup_get_version_query_packet*, %struct.ipw_setup_get_version_query_packet** %3, align 8
  %9 = getelementptr inbounds %struct.ipw_setup_get_version_query_packet, %struct.ipw_setup_get_version_query_packet* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 4, i32* %10, align 4
  %11 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %12 = load i32, i32* @PRIO_SETUP, align 4
  %13 = load %struct.ipw_setup_get_version_query_packet*, %struct.ipw_setup_get_version_query_packet** %3, align 8
  %14 = getelementptr inbounds %struct.ipw_setup_get_version_query_packet, %struct.ipw_setup_get_version_query_packet* %13, i32 0, i32 0
  %15 = call i32 @send_packet(%struct.ipw_hardware* %11, i32 %12, %struct.TYPE_2__* %14)
  ret void
}

declare dso_local %struct.ipw_setup_get_version_query_packet* @alloc_ctrl_packet(i32, i32, i32, i32) #1

declare dso_local i32 @send_packet(%struct.ipw_hardware*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
