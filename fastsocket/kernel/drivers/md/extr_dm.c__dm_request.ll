; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c__dm_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c__dm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mapped_device* }
%struct.mapped_device = type { i32, i32 }
%struct.bio = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ios = common dso_local global i32* null, align 8
@sectors = common dso_local global i32* null, align 8
@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@READA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @_dm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dm_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = call i32 @bio_data_dir(%struct.bio* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  store %struct.mapped_device* %13, %struct.mapped_device** %7, align 8
  %14 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %15 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = call i32 (...) @part_stat_lock()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %20 = call %struct.TYPE_2__* @dm_disk(%struct.mapped_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** @ios, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @part_stat_inc(i32 %18, i32* %21, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %30 = call %struct.TYPE_2__* @dm_disk(%struct.mapped_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** @sectors, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @bio_sectors(%struct.bio* %37)
  %39 = call i32 @part_stat_add(i32 %28, i32* %31, i32 %36, i32 %38)
  %40 = call i32 (...) @part_stat_unlock()
  %41 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %42 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %43 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %49 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i64 @bio_rw(%struct.bio* %51)
  %53 = load i64, i64* @READA, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = call i32 @queue_io(%struct.mapped_device* %56, %struct.bio* %57)
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = call i32 @bio_io_error(%struct.bio* %60)
  br label %62

62:                                               ; preds = %59, %55
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %2
  %64 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = call i32 @__split_and_process_bio(%struct.mapped_device* %64, %struct.bio* %65)
  %67 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %68 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %67, i32 0, i32 0
  %69 = call i32 @up_read(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %62
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_stat_inc(i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @part_stat_add(i32, i32*, i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @part_stat_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local i32 @queue_io(%struct.mapped_device*, %struct.bio*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @__split_and_process_bio(%struct.mapped_device*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
