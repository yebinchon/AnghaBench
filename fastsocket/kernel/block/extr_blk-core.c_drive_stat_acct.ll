; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_drive_stat_acct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_drive_stat_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.hd_struct = type { i32 }

@merges = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @drive_stat_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drive_stat_acct(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = call i32 @rq_data_dir(%struct.request* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = call i32 @blk_do_io_stat(%struct.request* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = call i32 (...) @part_stat_lock()
  store i32 %15, i32* %7, align 4
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = call i32 @blk_rq_pos(%struct.request* %19)
  %21 = call %struct.hd_struct* @disk_map_sector_rcu(i32 %18, i32 %20)
  store %struct.hd_struct* %21, %struct.hd_struct** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %27 = load i32*, i32** @merges, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @part_stat_inc(i32 %25, %struct.hd_struct* %26, i32 %31)
  br label %40

33:                                               ; preds = %14
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %36 = call i32 @part_round_stats(i32 %34, %struct.hd_struct* %35)
  %37 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @part_inc_in_flight(%struct.hd_struct* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = call i32 (...) @part_stat_unlock()
  br label %42

42:                                               ; preds = %40, %13
  ret void
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local %struct.hd_struct* @disk_map_sector_rcu(i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @part_stat_inc(i32, %struct.hd_struct*, i32) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i32 @part_inc_in_flight(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
