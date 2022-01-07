; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_part_round_stats_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_part_round_stats_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i64 }

@time_in_queue = common dso_local global i32 0, align 4
@io_ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hd_struct*, i64)* @part_round_stats_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @part_round_stats_single(i32 %0, %struct.hd_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hd_struct* %1, %struct.hd_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %9 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %15 = call i64 @part_in_flight(%struct.hd_struct* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %20 = load i32, i32* @time_in_queue, align 4
  %21 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %22 = call i64 @part_in_flight(%struct.hd_struct* %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %25 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  %28 = mul i64 %22, %27
  %29 = call i32 @__part_stat_add(i32 %18, %struct.hd_struct* %19, i32 %20, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %32 = load i32, i32* @io_ticks, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %35 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = call i32 @__part_stat_add(i32 %30, %struct.hd_struct* %31, i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %17, %13
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %42 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %12
  ret void
}

declare dso_local i64 @part_in_flight(%struct.hd_struct*) #1

declare dso_local i32 @__part_stat_add(i32, %struct.hd_struct*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
