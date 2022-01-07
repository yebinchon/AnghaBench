; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_set_restrictions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_set_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.request_queue = type { %struct.queue_limits }
%struct.queue_limits = type { i64, i64 }

@QUEUE_FLAG_CLUSTER = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@REQ_FLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@device_is_nonrot = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@device_is_not_random = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@QUEUE_FLAG_STACKABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_table_set_restrictions(%struct.dm_table* %0, %struct.request_queue* %1, %struct.queue_limits* %2) #0 {
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.request_queue* %1, %struct.request_queue** %5, align 8
  store %struct.queue_limits* %2, %struct.queue_limits** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %11 = bitcast %struct.queue_limits* %9 to i8*
  %12 = bitcast %struct.queue_limits* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %14 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @QUEUE_FLAG_CLUSTER, align 4
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = call i32 @queue_flag_clear_unlocked(i32 %18, %struct.request_queue* %19)
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @QUEUE_FLAG_CLUSTER, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %24 = call i32 @queue_flag_set_unlocked(i32 %22, %struct.request_queue* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %27 = call i32 @dm_table_supports_discards(%struct.dm_table* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %31 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %32 = call i32 @queue_flag_clear_unlocked(i32 %30, %struct.request_queue* %31)
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = call i32 @queue_flag_set_unlocked(i32 %34, %struct.request_queue* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %39 = load i32, i32* @REQ_FLUSH, align 4
  %40 = call i64 @dm_table_supports_flush(%struct.dm_table* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* @REQ_FLUSH, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %47 = load i32, i32* @REQ_FUA, align 4
  %48 = call i64 @dm_table_supports_flush(%struct.dm_table* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @REQ_FUA, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @blk_queue_flush(%struct.request_queue* %56, i32 %57)
  %59 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %60 = call i32 @dm_table_discard_zeroes_data(%struct.dm_table* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %68 = load i32, i32* @device_is_nonrot, align 4
  %69 = call i64 @dm_table_all_devices_attribute(%struct.dm_table* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %73 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %74 = call i32 @queue_flag_set_unlocked(i32 %72, %struct.request_queue* %73)
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %77 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %78 = call i32 @queue_flag_clear_unlocked(i32 %76, %struct.request_queue* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %81 = call i32 @dm_table_set_integrity(%struct.dm_table* %80)
  %82 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %83 = call i64 @blk_queue_add_random(%struct.request_queue* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %87 = load i32, i32* @device_is_not_random, align 4
  %88 = call i64 @dm_table_all_devices_attribute(%struct.dm_table* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %92 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %93 = call i32 @queue_flag_clear_unlocked(i32 %91, %struct.request_queue* %92)
  br label %94

94:                                               ; preds = %90, %85, %79
  %95 = call i32 (...) @smp_mb()
  %96 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %97 = call i64 @dm_table_request_based(%struct.dm_table* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @QUEUE_FLAG_STACKABLE, align 4
  %101 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %102 = call i32 @queue_flag_set_unlocked(i32 %100, %struct.request_queue* %101)
  br label %103

103:                                              ; preds = %99, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @queue_flag_clear_unlocked(i32, %struct.request_queue*) #2

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #2

declare dso_local i32 @dm_table_supports_discards(%struct.dm_table*) #2

declare dso_local i64 @dm_table_supports_flush(%struct.dm_table*, i32) #2

declare dso_local i32 @blk_queue_flush(%struct.request_queue*, i32) #2

declare dso_local i32 @dm_table_discard_zeroes_data(%struct.dm_table*) #2

declare dso_local i64 @dm_table_all_devices_attribute(%struct.dm_table*, i32) #2

declare dso_local i32 @dm_table_set_integrity(%struct.dm_table*) #2

declare dso_local i64 @blk_queue_add_random(%struct.request_queue*) #2

declare dso_local i32 @smp_mb(...) #2

declare dso_local i64 @dm_table_request_based(%struct.dm_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
