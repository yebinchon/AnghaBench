; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_packet_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.packet_data* }
%struct.packet_data = type { i32, i32, i32, %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"pkt_end_io_packet_write: id=%d, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @pkt_end_io_packet_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_end_io_packet_write(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_data*, align 8
  %6 = alloca %struct.pktcdvd_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.packet_data*, %struct.packet_data** %8, align 8
  store %struct.packet_data* %9, %struct.packet_data** %5, align 8
  %10 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %11 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %10, i32 0, i32 3
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %11, align 8
  store %struct.pktcdvd_device* %12, %struct.pktcdvd_device** %6, align 8
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %14 = icmp ne %struct.pktcdvd_device* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %19 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @VPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %24 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %29 = call i32 @pkt_bio_finished(%struct.pktcdvd_device* %28)
  %30 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %31 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %30, i32 0, i32 1
  %32 = call i32 @atomic_dec(i32* %31)
  %33 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %34 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %33, i32 0, i32 0
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %37 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %36, i32 0, i32 0
  %38 = call i32 @wake_up(i32* %37)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @VPRINTK(i8*, i32, i32) #1

declare dso_local i32 @pkt_bio_finished(%struct.pktcdvd_device*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
