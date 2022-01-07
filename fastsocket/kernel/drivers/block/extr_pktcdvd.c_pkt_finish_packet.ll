; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_finish_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_finish_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_data = type { i32*, %struct.bio*, i64 }
%struct.bio = type { %struct.bio* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_data*, i32)* @pkt_finish_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_finish_packet(%struct.packet_data* %0, i32 %1) #0 {
  %3 = alloca %struct.packet_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.packet_data* %0, %struct.packet_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %11 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %14 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %13, i32 0, i32 1
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %15, %struct.bio** %5, align 8
  br label %16

16:                                               ; preds = %32, %12
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = icmp ne %struct.bio* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  store %struct.bio* %22, %struct.bio** %6, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %24, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 0, %28 ], [ %31, %29 ]
  %34 = call i32 @bio_endio(%struct.bio* %25, i32 %33)
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %35, %struct.bio** %5, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %38 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %40 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %39, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %40, align 8
  ret void
}

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
