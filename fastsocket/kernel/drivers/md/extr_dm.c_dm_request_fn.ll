; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_request_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_request_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*)* }
%struct.request = type { i32 }

@REQ_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"request attempted access beyond the end of device\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @dm_request_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_request_fn(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 1
  %11 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  store %struct.mapped_device* %11, %struct.mapped_device** %3, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %13 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %12)
  store %struct.dm_table* %13, %struct.dm_table** %4, align 8
  br label %14

14:                                               ; preds = %88, %48, %1
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = call i32 @blk_queue_plugged(%struct.request_queue* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %20 = call i32 @blk_queue_stopped(%struct.request_queue* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %98

25:                                               ; preds = %23
  %26 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %27 = call %struct.request* @blk_peek_request(%struct.request_queue* %26)
  store %struct.request* %27, %struct.request** %6, align 8
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = icmp ne %struct.request* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %109

31:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REQ_FLUSH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call i64 @blk_rq_pos(%struct.request* %39)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call %struct.dm_target* @dm_table_find_target(%struct.dm_table* %42, i64 %43)
  store %struct.dm_target* %44, %struct.dm_target** %5, align 8
  %45 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %46 = call i32 @dm_target_is_valid(%struct.dm_target* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %51 = load %struct.request*, %struct.request** %6, align 8
  %52 = call %struct.request* @dm_start_request(%struct.mapped_device* %50, %struct.request* %51)
  store %struct.request* %52, %struct.request** %7, align 8
  %53 = load %struct.request*, %struct.request** %7, align 8
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @dm_kill_unmapped_request(%struct.request* %53, i32 %55)
  br label %14

57:                                               ; preds = %41
  %58 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %59 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64 (%struct.dm_target*)*, i64 (%struct.dm_target*)** %61, align 8
  %63 = icmp ne i64 (%struct.dm_target*)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %66 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64 (%struct.dm_target*)*, i64 (%struct.dm_target*)** %68, align 8
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = call i64 %69(%struct.dm_target* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %109

74:                                               ; preds = %64, %57
  %75 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %76 = load %struct.request*, %struct.request** %6, align 8
  %77 = call %struct.request* @dm_start_request(%struct.mapped_device* %75, %struct.request* %76)
  store %struct.request* %77, %struct.request** %7, align 8
  %78 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %79 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @spin_unlock(i32 %80)
  %82 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %83 = load %struct.request*, %struct.request** %7, align 8
  %84 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %85 = call i64 @map_request(%struct.dm_target* %82, %struct.request* %83, %struct.mapped_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %99

88:                                               ; preds = %74
  %89 = call i32 (...) @irqs_disabled()
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %95 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @spin_lock(i32 %96)
  br label %14

98:                                               ; preds = %23
  br label %117

99:                                               ; preds = %87
  %100 = call i32 (...) @irqs_disabled()
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %106 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @spin_lock(i32 %107)
  br label %109

109:                                              ; preds = %99, %73, %30
  %110 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %111 = call i32 @elv_queue_empty(%struct.request_queue* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %115 = call i32 @blk_plug_device(%struct.request_queue* %114)
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %98
  %118 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %119 = call i32 @dm_table_put(%struct.dm_table* %118)
  ret void
}

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i32 @blk_queue_plugged(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_stopped(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local %struct.dm_target* @dm_table_find_target(%struct.dm_table*, i64) #1

declare dso_local i32 @dm_target_is_valid(%struct.dm_target*) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

declare dso_local %struct.request* @dm_start_request(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @dm_kill_unmapped_request(%struct.request*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i64 @map_request(%struct.dm_target*, %struct.request*, %struct.mapped_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @elv_queue_empty(%struct.request_queue*) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
