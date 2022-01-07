; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_alloc_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_alloc_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32 }
%struct.throtl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.throtl_data*)* @throtl_alloc_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @throtl_alloc_tg(%struct.throtl_data* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i32, align 4
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* null, %struct.throtl_grp** %4, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %8 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.throtl_grp* @kzalloc_node(i32 4, i32 %6, i32 %11)
  store %struct.throtl_grp* %12, %struct.throtl_grp** %4, align 8
  %13 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %14 = icmp ne %struct.throtl_grp* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 0
  %19 = call i32 @blkio_alloc_blkg_stats(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %24 = call i32 @kfree(%struct.throtl_grp* %23)
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %27 = call i32 @throtl_init_group(%struct.throtl_grp* %26)
  %28 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* %28, %struct.throtl_grp** %2, align 8
  br label %29

29:                                               ; preds = %25, %22, %15
  %30 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  ret %struct.throtl_grp* %30
}

declare dso_local %struct.throtl_grp* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @blkio_alloc_blkg_stats(i32*) #1

declare dso_local i32 @kfree(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_init_group(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
