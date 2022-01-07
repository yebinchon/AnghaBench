; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_grow_pktlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_grow_pktlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.packet_data = type { i32, i32, %struct.pktcdvd_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i32)* @pkt_grow_pktlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_grow_pktlist(%struct.pktcdvd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_data*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 2
  %24 = call %struct.packet_data* @pkt_alloc_packet_data(i32 %23)
  store %struct.packet_data* %24, %struct.packet_data** %6, align 8
  %25 = load %struct.packet_data*, %struct.packet_data** %6, align 8
  %26 = icmp ne %struct.packet_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %29 = call i32 @pkt_shrink_pktlist(%struct.pktcdvd_device* %28)
  store i32 0, i32* %3, align 4
  br label %46

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.packet_data*, %struct.packet_data** %6, align 8
  %33 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %35 = load %struct.packet_data*, %struct.packet_data** %6, align 8
  %36 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %35, i32 0, i32 2
  store %struct.pktcdvd_device* %34, %struct.pktcdvd_device** %36, align 8
  %37 = load %struct.packet_data*, %struct.packet_data** %6, align 8
  %38 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %37, i32 0, i32 1
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %40 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @list_add(i32* %38, i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.packet_data* @pkt_alloc_packet_data(i32) #1

declare dso_local i32 @pkt_shrink_pktlist(%struct.pktcdvd_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
