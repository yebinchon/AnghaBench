; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_context_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_context_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { %struct.fw_card* }
%struct.fw_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.fw_iso_packet = type { i32 }
%struct.fw_iso_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_context_queue(%struct.fw_iso_context* %0, %struct.fw_iso_packet* %1, %struct.fw_iso_buffer* %2, i64 %3) #0 {
  %5 = alloca %struct.fw_iso_context*, align 8
  %6 = alloca %struct.fw_iso_packet*, align 8
  %7 = alloca %struct.fw_iso_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fw_card*, align 8
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %5, align 8
  store %struct.fw_iso_packet* %1, %struct.fw_iso_packet** %6, align 8
  store %struct.fw_iso_buffer* %2, %struct.fw_iso_buffer** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.fw_iso_context*, %struct.fw_iso_context** %5, align 8
  %11 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %10, i32 0, i32 0
  %12 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  store %struct.fw_card* %12, %struct.fw_card** %9, align 8
  %13 = load %struct.fw_card*, %struct.fw_card** %9, align 8
  %14 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)**
  %18 = load i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)*, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)** %17, align 8
  %19 = load %struct.fw_iso_context*, %struct.fw_iso_context** %5, align 8
  %20 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %6, align 8
  %21 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 %18(%struct.fw_iso_context* %19, %struct.fw_iso_packet* %20, %struct.fw_iso_buffer* %21, i64 %22)
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
