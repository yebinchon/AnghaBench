; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.dm_rh_client* }
%struct.dm_rh_client = type { i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@S_BARRIER = common dso_local global i64 0, align 8
@LIST_FLUSH = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@DM_RH_RECOVERING = common dso_local global i32 0, align 4
@S_DELAYED_BIOS = common dso_local global i64 0, align 8
@S_SUM_DELAYED_BIOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"dirty log flush\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, %struct.bio_list*)* @do_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ios(%struct.raid_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_rh_client*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.bio_list, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.dm_rh_client*, %struct.dm_rh_client** %14, align 8
  store %struct.dm_rh_client* %15, %struct.dm_rh_client** %9, align 8
  %16 = call i32 @bio_list_init(%struct.bio_list* %11)
  br label %17

17:                                               ; preds = %111, %66, %2
  %18 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %19 = call %struct.bio* @bio_list_pop(%struct.bio_list* %18)
  store %struct.bio* %19, %struct.bio** %10, align 8
  %20 = icmp ne %struct.bio* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = load %struct.bio*, %struct.bio** %10, align 8
  %23 = call i32 @bio_empty_barrier(%struct.bio* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @S_BARRIER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @atomic_inc(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %37 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LIST_FLUSH, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @list_empty(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = call i32 @bio_list_empty(%struct.bio_list* %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 1
  %50 = call i64 @sc_active(%struct.TYPE_4__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47, %44, %35, %26
  %53 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %54 = load %struct.bio*, %struct.bio** %10, align 8
  %55 = call i32 @bio_list_push(%struct.bio_list* %53, %struct.bio* %54)
  br label %112

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %21
  %58 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %59 = call i64 @RSProhibitWrites(%struct.raid_set* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.bio*, %struct.bio** %10, align 8
  %63 = call i64 @bio_data_dir(%struct.bio* %62)
  %64 = load i64, i64* @WRITE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.bio*, %struct.bio** %10, align 8
  %68 = call i32 @bio_list_add(%struct.bio_list* %11, %struct.bio* %67)
  br label %17

69:                                               ; preds = %61, %57
  %70 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %71 = load %struct.bio*, %struct.bio** %10, align 8
  %72 = call i32 @_sector(%struct.raid_set* %70, %struct.bio* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DM_RH_RECOVERING, align 4
  %76 = call i32 @region_state(%struct.raid_set* %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load %struct.dm_rh_client*, %struct.dm_rh_client** %9, align 8
  %84 = load %struct.bio*, %struct.bio** %10, align 8
  %85 = load %struct.dm_rh_client*, %struct.dm_rh_client** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dm_rh_sector_to_region(%struct.dm_rh_client* %85, i32 %86)
  %88 = call i32 @dm_rh_delay_by_region(%struct.dm_rh_client* %83, %struct.bio* %84, i32 %87)
  %89 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %90 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @S_DELAYED_BIOS, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @atomic_inc(i64 %93)
  %95 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %96 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @S_SUM_DELAYED_BIOS, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @atomic_inc(i64 %99)
  %101 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %102 = call i32 @SetRSBandwidth(%struct.raid_set* %101)
  br label %111

103:                                              ; preds = %69
  %104 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %105 = load %struct.bio*, %struct.bio** %10, align 8
  %106 = call i64 @stripe_queue_bio(%struct.raid_set* %104, %struct.bio* %105, %struct.bio_list* %11)
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %103, %80
  br label %17

112:                                              ; preds = %52, %17
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.dm_rh_client*, %struct.dm_rh_client** %9, align 8
  %117 = call i32 @dm_rh_flush(%struct.dm_rh_client* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  br label %123

123:                                              ; preds = %122, %112
  %124 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %125 = call i32 @bio_list_merge_head(%struct.bio_list* %124, %struct.bio_list* %11)
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_empty_barrier(%struct.bio*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @list_empty(i64) #1

declare dso_local i32 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i64 @sc_active(%struct.TYPE_4__*) #1

declare dso_local i32 @bio_list_push(%struct.bio_list*, %struct.bio*) #1

declare dso_local i64 @RSProhibitWrites(%struct.raid_set*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @_sector(%struct.raid_set*, %struct.bio*) #1

declare dso_local i32 @region_state(%struct.raid_set*, i32, i32) #1

declare dso_local i32 @dm_rh_delay_by_region(%struct.dm_rh_client*, %struct.bio*, i32) #1

declare dso_local i32 @dm_rh_sector_to_region(%struct.dm_rh_client*, i32) #1

declare dso_local i32 @SetRSBandwidth(%struct.raid_set*) #1

declare dso_local i64 @stripe_queue_bio(%struct.raid_set*, %struct.bio*, %struct.bio_list*) #1

declare dso_local i32 @dm_rh_flush(%struct.dm_rh_client*) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

declare dso_local i32 @bio_list_merge_head(%struct.bio_list*, %struct.bio_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
