; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_io_hints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_2__, %struct.pool* }
%struct.TYPE_2__ = type { i32 }
%struct.pool = type { i32 }
%struct.queue_limits = type { i32, i64 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @pool_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.pool_c*, align 8
  %6 = alloca %struct.pool*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.pool_c*, %struct.pool_c** %9, align 8
  store %struct.pool_c* %10, %struct.pool_c** %5, align 8
  %11 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %12 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %11, i32 0, i32 1
  %13 = load %struct.pool*, %struct.pool** %12, align 8
  store %struct.pool* %13, %struct.pool** %6, align 8
  %14 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %15 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SECTOR_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.pool*, %struct.pool** %6, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pool*, %struct.pool** %6, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @do_div(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24, %2
  %32 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %33 = call i32 @blk_limits_io_min(%struct.queue_limits* %32, i32 0)
  %34 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %35 = load %struct.pool*, %struct.pool** %6, align 8
  %36 = getelementptr inbounds %struct.pool, %struct.pool* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SECTOR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @blk_limits_io_opt(%struct.queue_limits* %34, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  %42 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %43 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %52 = call i32 @disable_passdown_if_not_supported(%struct.pool_c* %51)
  %53 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %54 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %55 = call i32 @set_discard_limits(%struct.pool_c* %53, %struct.queue_limits* %54)
  br label %56

56:                                               ; preds = %50, %47
  ret void
}

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i32) #1

declare dso_local i32 @disable_passdown_if_not_supported(%struct.pool_c*) #1

declare dso_local i32 @set_discard_limits(%struct.pool_c*, %struct.queue_limits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
