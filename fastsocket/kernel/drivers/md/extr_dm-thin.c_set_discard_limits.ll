; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_set_discard_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_set_discard_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_c = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.pool* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pool = type { i32 }
%struct.queue_limits = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.queue_limits }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_c*, %struct.queue_limits*)* @set_discard_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_discard_limits(%struct.pool_c* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.pool_c*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  store %struct.pool_c* %0, %struct.pool_c** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %8 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %7, i32 0, i32 2
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %5, align 8
  %10 = load %struct.pool*, %struct.pool** %5, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %14 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %16 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %22 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_6__* @bdev_get_queue(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.queue_limits* %27, %struct.queue_limits** %6, align 8
  %28 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %29 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %32 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.pool*, %struct.pool** %5, align 8
  %35 = getelementptr inbounds %struct.pool, %struct.pool* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SECTOR_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %40 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @bdev_get_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
