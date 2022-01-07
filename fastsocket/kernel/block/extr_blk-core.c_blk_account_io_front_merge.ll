; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_account_io_front_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_account_io_front_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }
%struct.hd_struct = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @blk_account_io_front_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_account_io_front_merge(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca %struct.hd_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = call i64 @blk_do_io_stat(%struct.request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = call i32 (...) @part_stat_lock()
  store i32 %12, i32* %7, align 4
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @is_same_part(i32 %15, i32 %18, i32 %19, %struct.hd_struct** %5, %struct.hd_struct** %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %11
  %23 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %24 = icmp ne %struct.hd_struct* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %28 = call i32 @part_round_stats(i32 %26, %struct.hd_struct* %27)
  %29 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %30 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = call i64 @rq_data_dir(%struct.request* %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %39 = icmp ne %struct.hd_struct* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %43 = call i32 @part_round_stats(i32 %41, %struct.hd_struct* %42)
  %44 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %45 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.request*, %struct.request** %3, align 8
  %48 = call i64 @rq_data_dir(%struct.request* %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40, %37
  br label %53

53:                                               ; preds = %52, %11
  %54 = call i32 (...) @part_stat_unlock()
  br label %55

55:                                               ; preds = %53, %2
  ret void
}

declare dso_local i64 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @is_same_part(i32, i32, i32, %struct.hd_struct**, %struct.hd_struct**) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
