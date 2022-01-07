; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_busy_queues_wl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_busy_queues_wl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_group = type { %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IDLE_WORKLOAD = common dso_local global i32 0, align 4
@ASYNC_WORKLOAD = common dso_local global i64 0, align 8
@SYNC_NOIDLE_WORKLOAD = common dso_local global i64 0, align 8
@SYNC_WORKLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cfq_data*, %struct.cfq_group*)* @cfq_group_busy_queues_wl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_group_busy_queues_wl(i32 %0, %struct.cfq_data* %1, %struct.cfq_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfq_data*, align 8
  %7 = alloca %struct.cfq_group*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cfq_data* %1, %struct.cfq_data** %6, align 8
  store %struct.cfq_group* %2, %struct.cfq_group** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IDLE_WORKLOAD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.cfq_group*, %struct.cfq_group** %7, align 8
  %13 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.cfq_group*, %struct.cfq_group** %7, align 8
  %18 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @ASYNC_WORKLOAD, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cfq_group*, %struct.cfq_group** %7, align 8
  %29 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* @SYNC_NOIDLE_WORKLOAD, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %27, %38
  %40 = load %struct.cfq_group*, %struct.cfq_group** %7, align 8
  %41 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @SYNC_WORKLOAD, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %39, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %16, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
