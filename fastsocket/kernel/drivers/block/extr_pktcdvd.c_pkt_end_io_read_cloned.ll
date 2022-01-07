; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_read_cloned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_read_cloned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.packet_stacked_data* }
%struct.packet_stacked_data = type { i32, %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { i32 }

@psd_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @pkt_end_io_read_cloned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_end_io_read_cloned(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_stacked_data*, align 8
  %6 = alloca %struct.pktcdvd_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %8, align 8
  store %struct.packet_stacked_data* %9, %struct.packet_stacked_data** %5, align 8
  %10 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %5, align 8
  %11 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %10, i32 0, i32 1
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %11, align 8
  store %struct.pktcdvd_device* %12, %struct.pktcdvd_device** %6, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = call i32 @bio_put(%struct.bio* %13)
  %15 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %5, align 8
  %16 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @bio_endio(i32 %17, i32 %18)
  %20 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %5, align 8
  %21 = load i32, i32* @psd_pool, align 4
  %22 = call i32 @mempool_free(%struct.packet_stacked_data* %20, i32 %21)
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %24 = call i32 @pkt_bio_finished(%struct.pktcdvd_device* %23)
  ret void
}

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @bio_endio(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.packet_stacked_data*, i32) #1

declare dso_local i32 @pkt_bio_finished(%struct.pktcdvd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
