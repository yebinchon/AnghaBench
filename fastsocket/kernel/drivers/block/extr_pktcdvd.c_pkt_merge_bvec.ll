; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_merge_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_merge_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bvec_merge_data = type { i32, i32 }
%struct.bio_vec = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* @pkt_merge_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_merge_bvec(%struct.request_queue* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bvec_merge_data*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.pktcdvd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %5, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %6, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %13, align 8
  store %struct.pktcdvd_device* %14, %struct.pktcdvd_device** %7, align 8
  %15 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %16 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %19 = call i32 @ZONE(i32 %17, %struct.pktcdvd_device* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %21 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %24, 9
  %26 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %27 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 9
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %39 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @max(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @ZONE(i32, %struct.pktcdvd_device*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
