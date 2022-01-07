; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_update_disptime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_update_disptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i64, i32* }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*)* @tg_update_disptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_update_disptime(%struct.throtl_data* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @READ, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call %struct.bio* @bio_list_peek(i32* %14)
  store %struct.bio* %15, %struct.bio** %9, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %20 = load %struct.bio*, %struct.bio** %9, align 8
  %21 = call i32 @tg_may_dispatch(%struct.throtl_data* %18, %struct.throtl_grp* %19, %struct.bio* %20, i64* %5)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %24 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @WRITE, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call %struct.bio* @bio_list_peek(i32* %27)
  store %struct.bio* %28, %struct.bio** %9, align 8
  %29 = icmp ne %struct.bio* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = call i32 @tg_may_dispatch(%struct.throtl_data* %31, %struct.throtl_grp* %32, %struct.bio* %33, i64* %6)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @min(i64 %36, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %44 = call i32 @throtl_dequeue_tg(%struct.throtl_data* %42, %struct.throtl_grp* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %47 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %49 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %50 = call i32 @throtl_enqueue_tg(%struct.throtl_data* %48, %struct.throtl_grp* %49)
  ret void
}

declare dso_local %struct.bio* @bio_list_peek(i32*) #1

declare dso_local i32 @tg_may_dispatch(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @throtl_dequeue_tg(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @throtl_enqueue_tg(%struct.throtl_data*, %struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
