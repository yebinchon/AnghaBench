; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_end_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.packet_data* }
%struct.packet_data = type { i32, i32, i32, i64, %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"pkt_end_io_read: bio=%p sec0=%llx sec=%llx err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @pkt_end_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_end_io_read(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_data*, align 8
  %6 = alloca %struct.pktcdvd_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.packet_data*, %struct.packet_data** %8, align 8
  store %struct.packet_data* %9, %struct.packet_data** %5, align 8
  %10 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %11 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %10, i32 0, i32 4
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %11, align 8
  store %struct.pktcdvd_device* %12, %struct.pktcdvd_device** %6, align 8
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %14 = icmp ne %struct.pktcdvd_device* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %20 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @VPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.bio* %18, i64 %21, i64 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %31 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %30, i32 0, i32 2
  %32 = call i32 @atomic_inc(i32* %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %35 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %34, i32 0, i32 1
  %36 = call i64 @atomic_dec_and_test(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %40 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %43 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %47 = call i32 @pkt_bio_finished(%struct.pktcdvd_device* %46)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @VPRINTK(i8*, %struct.bio*, i64, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pkt_bio_finished(%struct.pktcdvd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
