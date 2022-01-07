; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_disk_stats_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_disk_stats_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hd_struct }
%struct.hd_struct = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, %struct.bio*)* @disk_stats_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_stats_start(%struct.rsxx_cardinfo* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %9 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.hd_struct* %11, %struct.hd_struct** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = call i32 @bio_data_dir(%struct.bio* %12)
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @part_stat_lock()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %17 = call i32 @part_round_stats(i32 %15, %struct.hd_struct* %16)
  %18 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @part_inc_in_flight(%struct.hd_struct* %18, i32 %19)
  %21 = call i32 (...) @part_stat_unlock()
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i32 @part_inc_in_flight(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
