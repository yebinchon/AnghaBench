; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.raid_set* }
%struct.raid_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio = type { i32 }
%union.map_info = type { i32 }

@READA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@S_BIOS_READ = common dso_local global i64 0, align 8
@S_BIOS_WRITE = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @raid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %9 = load %struct.bio*, %struct.bio** %6, align 8
  %10 = call i64 @bio_rw(%struct.bio* %9)
  %11 = load i64, i64* @READA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 1
  %19 = load %struct.raid_set*, %struct.raid_set** %18, align 8
  store %struct.raid_set* %19, %struct.raid_set** %8, align 8
  %20 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %21 = call i32 @io_get(%struct.raid_set* %20)
  %22 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %32 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = call i32 @bio_list_add(i32* %37, %struct.bio* %38)
  %40 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %41 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %45 = call i32 @wake_do_raid(%struct.raid_set* %44)
  %46 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = call i64 @bio_data_dir(%struct.bio* %49)
  %51 = load i64, i64* @READ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %16
  %54 = load i64, i64* @S_BIOS_READ, align 8
  br label %57

55:                                               ; preds = %16
  %56 = load i64, i64* @S_BIOS_WRITE, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = add nsw i64 %48, %58
  %60 = call i32 @atomic_inc(i64 %59)
  %61 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local i32 @io_get(%struct.raid_set*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_do_raid(%struct.raid_set*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
