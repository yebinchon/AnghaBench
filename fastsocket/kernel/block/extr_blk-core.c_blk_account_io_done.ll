; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_account_io_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_account_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i64, i32 }
%struct.hd_struct = type { i32 }

@REQ_FLUSH_SEQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ios = common dso_local global i32* null, align 8
@ticks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @blk_account_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_account_io_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = call i64 @blk_do_io_stat(%struct.request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REQ_FLUSH_SEQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %3, align 8
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = call i32 @rq_data_dir(%struct.request* %23)
  store i32 %24, i32* %4, align 4
  %25 = call i32 (...) @part_stat_lock()
  store i32 %25, i32* %6, align 4
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = call i32 @blk_rq_pos(%struct.request* %29)
  %31 = call %struct.hd_struct* @disk_map_sector_rcu(i32 %28, i32 %30)
  store %struct.hd_struct* %31, %struct.hd_struct** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %34 = load i32*, i32** @ios, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @part_stat_inc(i32 %32, %struct.hd_struct* %33, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %42 = load i32*, i32** @ticks, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @part_stat_add(i32 %40, %struct.hd_struct* %41, i32 %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %51 = call i32 @part_round_stats(i32 %49, %struct.hd_struct* %50)
  %52 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @part_dec_in_flight(%struct.hd_struct* %52, i32 %53)
  %55 = call i32 (...) @part_stat_unlock()
  br label %56

56:                                               ; preds = %17, %10, %1
  ret void
}

declare dso_local i64 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local %struct.hd_struct* @disk_map_sector_rcu(i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @part_stat_inc(i32, %struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_add(i32, %struct.hd_struct*, i32, i64) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i32 @part_dec_in_flight(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
