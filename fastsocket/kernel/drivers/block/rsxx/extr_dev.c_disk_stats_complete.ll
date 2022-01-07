; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_disk_stats_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_disk_stats_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hd_struct }
%struct.hd_struct = type { i32 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@sectors = common dso_local global i32* null, align 8
@ios = common dso_local global i32* null, align 8
@ticks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, %struct.bio*, i64)* @disk_stats_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_stats_complete(%struct.rsxx_cardinfo* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %12 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.hd_struct* %14, %struct.hd_struct** %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i32 @bio_data_dir(%struct.bio* %18)
  store i32 %19, i32* %9, align 4
  %20 = call i32 (...) @part_stat_lock()
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %23 = load i32*, i32** @sectors, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = call i64 @bio_sectors(%struct.bio* %28)
  %30 = call i32 @part_stat_add(i32 %21, %struct.hd_struct* %22, i32 %27, i64 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %33 = load i32*, i32** @ios, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @part_stat_inc(i32 %31, %struct.hd_struct* %32, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %41 = load i32*, i32** @ticks, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @part_stat_add(i32 %39, %struct.hd_struct* %40, i32 %45, i64 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %50 = call i32 @part_round_stats(i32 %48, %struct.hd_struct* %49)
  %51 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @part_dec_in_flight(%struct.hd_struct* %51, i32 %52)
  %54 = call i32 (...) @part_stat_unlock()
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_stat_add(i32, %struct.hd_struct*, i32, i64) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @part_stat_inc(i32, %struct.hd_struct*, i32) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i32 @part_dec_in_flight(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
