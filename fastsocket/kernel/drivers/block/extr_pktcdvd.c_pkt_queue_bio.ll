; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_queue_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_queue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.bio*)* @pkt_queue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_queue_bio(%struct.pktcdvd_device* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %6 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = call i64 @bio_data_dir(%struct.bio* %9)
  %11 = load i64, i64* @READ, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %16 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %19 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = call i32 @pkt_add_list_last(%struct.bio* %14, i32* %17, i32* %20)
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %25 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %28 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @pkt_add_list_last(%struct.bio* %23, i32* %26, i32* %29)
  br label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %33 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %37 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %41 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %40, i32 0, i32 0
  %42 = call i32 @wake_up(i32* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @pkt_add_list_last(%struct.bio*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
