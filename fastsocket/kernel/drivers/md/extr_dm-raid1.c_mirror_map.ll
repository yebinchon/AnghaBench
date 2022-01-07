; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.mirror_set* }
%struct.mirror_set = type { i32, i32 }
%struct.bio = type { i32 }
%union.map_info = type { %struct.dm_raid1_read_record* }
%struct.dm_raid1_read_record = type { %struct.mirror*, i32 }
%struct.mirror = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*, i32, i32)* }

@WRITE = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @mirror_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mirror*, align 8
  %11 = alloca %struct.mirror_set*, align 8
  %12 = alloca %struct.dm_raid1_read_record*, align 8
  %13 = alloca %struct.dm_dirty_log*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = call i32 @bio_rw(%struct.bio* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  %18 = load %struct.mirror_set*, %struct.mirror_set** %17, align 8
  store %struct.mirror_set* %18, %struct.mirror_set** %11, align 8
  store %struct.dm_raid1_read_record* null, %struct.dm_raid1_read_record** %12, align 8
  %19 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %20 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %21)
  store %struct.dm_dirty_log* %22, %struct.dm_dirty_log** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @WRITE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %28 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = call i32 @dm_rh_bio_to_region(i32 %29, %struct.bio* %30)
  %32 = load %union.map_info*, %union.map_info** %7, align 8
  %33 = bitcast %union.map_info* %32 to i32*
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @queue_bio(%struct.mirror_set* %34, %struct.bio* %35, i32 %36)
  %38 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %38, i32* %4, align 4
  br label %122

39:                                               ; preds = %3
  %40 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %41 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dm_dirty_log*, i32, i32)*, i32 (%struct.dm_dirty_log*, i32, i32)** %43, align 8
  %45 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %46 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %47 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = call i32 @dm_rh_bio_to_region(i32 %48, %struct.bio* %49)
  %51 = call i32 %44(%struct.dm_dirty_log* %45, i32 %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EWOULDBLOCK, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %54, %39
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EWOULDBLOCK, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @READA, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EWOULDBLOCK, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %122

76:                                               ; preds = %69
  %77 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @queue_bio(%struct.mirror_set* %77, %struct.bio* %78, i32 %79)
  %81 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %81, i32* %4, align 4
  br label %122

82:                                               ; preds = %64
  %83 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %84 = load %struct.bio*, %struct.bio** %6, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.mirror* @choose_mirror(%struct.mirror_set* %83, i32 %86)
  store %struct.mirror* %87, %struct.mirror** %10, align 8
  %88 = load %struct.mirror*, %struct.mirror** %10, align 8
  %89 = icmp ne %struct.mirror* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %122

97:                                               ; preds = %82
  %98 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %99 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GFP_NOIO, align 4
  %102 = call %struct.dm_raid1_read_record* @mempool_alloc(i32 %100, i32 %101)
  store %struct.dm_raid1_read_record* %102, %struct.dm_raid1_read_record** %12, align 8
  %103 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %12, align 8
  %104 = call i64 @likely(%struct.dm_raid1_read_record* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %97
  %107 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %12, align 8
  %108 = getelementptr inbounds %struct.dm_raid1_read_record, %struct.dm_raid1_read_record* %107, i32 0, i32 1
  %109 = load %struct.bio*, %struct.bio** %6, align 8
  %110 = call i32 @dm_bio_record(i32* %108, %struct.bio* %109)
  %111 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %12, align 8
  %112 = load %union.map_info*, %union.map_info** %7, align 8
  %113 = bitcast %union.map_info* %112 to %struct.dm_raid1_read_record**
  store %struct.dm_raid1_read_record* %111, %struct.dm_raid1_read_record** %113, align 8
  %114 = load %struct.mirror*, %struct.mirror** %10, align 8
  %115 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %12, align 8
  %116 = getelementptr inbounds %struct.dm_raid1_read_record, %struct.dm_raid1_read_record* %115, i32 0, i32 0
  store %struct.mirror* %114, %struct.mirror** %116, align 8
  br label %117

117:                                              ; preds = %106, %97
  %118 = load %struct.mirror*, %struct.mirror** %10, align 8
  %119 = load %struct.bio*, %struct.bio** %6, align 8
  %120 = call i32 @map_bio(%struct.mirror* %118, %struct.bio* %119)
  %121 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %94, %76, %73, %59, %26
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @bio_rw(%struct.bio*) #1

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local i32 @queue_bio(%struct.mirror_set*, %struct.bio*, i32) #1

declare dso_local %struct.mirror* @choose_mirror(%struct.mirror_set*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_raid1_read_record* @mempool_alloc(i32, i32) #1

declare dso_local i64 @likely(%struct.dm_raid1_read_record*) #1

declare dso_local i32 @dm_bio_record(i32*, %struct.bio*) #1

declare dso_local i32 @map_bio(%struct.mirror*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
