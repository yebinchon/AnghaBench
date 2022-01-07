; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_map_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, %struct.request*, i32*)* }
%struct.request = type { i32, %struct.dm_rq_target_io* }
%struct.dm_rq_target_io = type { i32, i32, %struct.dm_target* }
%struct.mapped_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"unimplemented target map return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.request*, %struct.mapped_device*)* @map_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_request(%struct.dm_target* %0, %struct.request* %1, %struct.mapped_device* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_rq_target_io*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.mapped_device* %2, %struct.mapped_device** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 1
  %12 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %11, align 8
  store %struct.dm_rq_target_io* %12, %struct.dm_rq_target_io** %9, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %15 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %14, i32 0, i32 2
  store %struct.dm_target* %13, %struct.dm_target** %15, align 8
  %16 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dm_target*, %struct.request*, i32*)*, i32 (%struct.dm_target*, %struct.request*, i32*)** %19, align 8
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %24 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %23, i32 0, i32 1
  %25 = call i32 %20(%struct.dm_target* %21, %struct.request* %22, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %46 [
    i32 128, label %27
    i32 130, label %28
    i32 129, label %43
  ]

27:                                               ; preds = %3
  br label %57

28:                                               ; preds = %3
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %34 = call i32 @dm_disk(%struct.mapped_device* %33)
  %35 = call i32 @disk_devt(i32 %34)
  %36 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %37 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @blk_rq_pos(i32 %38)
  %40 = call i32 @trace_block_rq_remap(i32 %31, %struct.request* %32, i32 %35, i32 %39)
  %41 = load %struct.request*, %struct.request** %5, align 8
  %42 = call i32 @dm_dispatch_request(%struct.request* %41)
  br label %57

43:                                               ; preds = %3
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = call i32 @dm_requeue_unmapped_request(%struct.request* %44)
  store i32 1, i32* %8, align 4
  br label %57

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @DMWARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.request*, %struct.request** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dm_kill_unmapped_request(%struct.request* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %43, %28, %27
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @trace_block_rq_remap(i32, %struct.request*, i32, i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blk_rq_pos(i32) #1

declare dso_local i32 @dm_dispatch_request(%struct.request*) #1

declare dso_local i32 @dm_requeue_unmapped_request(%struct.request*) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dm_kill_unmapped_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
