; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_set_read_ahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_set_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.mapped_device = type { i32 }
%struct.backing_dev_info = type { i32 }
%struct.request_queue = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.backing_dev_info }

@SECTORS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, i32, i32)* @rs_set_read_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_read_ahead(%struct.raid_set* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca %struct.backing_dev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.request_queue*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SECTORS_PER_PAGE, align 4
  %14 = call i32 @dm_div_up(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %16 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mapped_device* @dm_table_get_md(i32 %19)
  store %struct.mapped_device* %20, %struct.mapped_device** %8, align 8
  %21 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %22 = call %struct.TYPE_14__* @dm_disk(%struct.mapped_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.backing_dev_info* %25, %struct.backing_dev_info** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %3
  %29 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %33, %34
  %36 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %37 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %35, %39
  %41 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  %42 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %47, %28
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.request_queue* @bdev_get_queue(i32 %57)
  store %struct.request_queue* %58, %struct.request_queue** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %43

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %66 = call i32 @dm_put(%struct.mapped_device* %65)
  ret void
}

declare dso_local i32 @dm_div_up(i32, i32) #1

declare dso_local %struct.mapped_device* @dm_table_get_md(i32) #1

declare dso_local %struct.TYPE_14__* @dm_disk(%struct.mapped_device*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
