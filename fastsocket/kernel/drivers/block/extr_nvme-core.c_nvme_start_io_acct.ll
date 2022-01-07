; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_start_io_acct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_start_io_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gendisk* }
%struct.gendisk = type { i32 }

@ios = common dso_local global i32* null, align 8
@sectors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @nvme_start_io_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_start_io_acct(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  store %struct.gendisk* %10, %struct.gendisk** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = call i32 @bio_data_dir(%struct.bio* %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @part_stat_lock()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 0
  %17 = call i32 @part_round_stats(i32 %14, i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 0
  %21 = load i32*, i32** @ios, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @part_stat_inc(i32 %18, i32* %20, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %29 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %28, i32 0, i32 0
  %30 = load i32*, i32** @sectors, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @bio_sectors(%struct.bio* %35)
  %37 = call i32 @part_stat_add(i32 %27, i32* %29, i32 %34, i32 %36)
  %38 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @part_inc_in_flight(i32* %39, i32 %40)
  %42 = call i32 (...) @part_stat_unlock()
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_round_stats(i32, i32*) #1

declare dso_local i32 @part_stat_inc(i32, i32*, i32) #1

declare dso_local i32 @part_stat_add(i32, i32*, i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @part_inc_in_flight(i32*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
