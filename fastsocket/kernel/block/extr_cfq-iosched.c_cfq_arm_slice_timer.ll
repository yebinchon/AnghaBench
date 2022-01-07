; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_arm_slice_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_arm_slice_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64, i64, i32, %struct.cfq_io_context*, i64, i32, %struct.cfq_queue* }
%struct.cfq_io_context = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfq_queue = type { i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Not idling. think_time:%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"arm_idle: %lu group_idle: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*)* @cfq_arm_slice_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_arm_slice_timer(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_data*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %2, align 8
  %7 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %8 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %7, i32 0, i32 6
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  store %struct.cfq_queue* %9, %struct.cfq_queue** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @blk_queue_nonrot(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %17 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %134

21:                                               ; preds = %15, %1
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %23 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %22, i32 0, i32 3
  %24 = call i32 @RB_EMPTY_ROOT(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %30 = call i32 @cfq_cfqq_slice_new(%struct.cfq_queue* %29)
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %34 = call i32 @cfq_should_idle(%struct.cfq_data* %32, %struct.cfq_queue* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %21
  %37 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %38 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %43 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  br label %46

45:                                               ; preds = %36
  br label %134

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %49 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %134

53:                                               ; preds = %47
  %54 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %55 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %54, i32 0, i32 3
  %56 = load %struct.cfq_io_context*, %struct.cfq_io_context** %55, align 8
  store %struct.cfq_io_context* %56, %struct.cfq_io_context** %4, align 8
  %57 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %58 = icmp ne %struct.cfq_io_context* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %61 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59, %53
  br label %134

67:                                               ; preds = %59
  %68 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %69 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @sample_valid(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %75 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @jiffies, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %80 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %85 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %86 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %87 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.cfq_data*, %struct.cfq_queue*, i8*, i64, ...) @cfq_log_cfqq(%struct.cfq_data* %84, %struct.cfq_queue* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %134

90:                                               ; preds = %73, %67
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %95 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %134

101:                                              ; preds = %93, %90
  %102 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %103 = call i32 @cfq_mark_cfqq_wait_request(%struct.cfq_queue* %102)
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %108 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %5, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %112 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %116 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %115, i32 0, i32 2
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %117, %118
  %120 = call i32 @mod_timer(i32* %116, i64 %119)
  %121 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %122 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @cfq_blkiocg_update_set_idle_time_stats(i32* %124)
  %126 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %127 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = call i32 (%struct.cfq_data*, %struct.cfq_queue*, i8*, i64, ...) @cfq_log_cfqq(%struct.cfq_data* %126, %struct.cfq_queue* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %128, i32 %132)
  br label %134

134:                                              ; preds = %114, %100, %83, %66, %52, %45, %20
  ret void
}

declare dso_local i64 @blk_queue_nonrot(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @cfq_cfqq_slice_new(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_should_idle(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @sample_valid(i32) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i64, ...) #1

declare dso_local i32 @cfq_mark_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @cfq_blkiocg_update_set_idle_time_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
