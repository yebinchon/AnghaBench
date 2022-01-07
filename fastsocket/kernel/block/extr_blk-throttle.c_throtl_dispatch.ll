; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.throtl_data* }
%struct.throtl_data = type { i32* }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"dispatch nr_queued=%lu read=%u write=%u\00", align 1
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"bios disp=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*)* @throtl_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_dispatch(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 1
  %9 = load %struct.throtl_data*, %struct.throtl_data** %8, align 8
  store %struct.throtl_data* %9, %struct.throtl_data** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @spin_lock_irq(i32 %12)
  %14 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %15 = call i32 @throtl_process_limit_change(%struct.throtl_data* %14)
  %16 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %17 = call i32 @total_nr_queued(%struct.throtl_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %49

20:                                               ; preds = %1
  %21 = call i32 @bio_list_init(%struct.bio_list* %5)
  %22 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %23 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %24 = call i32 @total_nr_queued(%struct.throtl_data* %23)
  %25 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %26 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @READ, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %32 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @WRITE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.throtl_data*, i8*, i32, ...) @throtl_log(%struct.throtl_data* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30, i32 %36)
  %38 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %39 = call i32 @throtl_select_dispatch(%struct.throtl_data* %38, %struct.bio_list* %5)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (%struct.throtl_data*, i8*, i32, ...) @throtl_log(%struct.throtl_data* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %20
  %47 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %48 = call i32 @throtl_schedule_next_dispatch(%struct.throtl_data* %47)
  br label %49

49:                                               ; preds = %46, %19
  %50 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %51 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @spin_unlock_irq(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %60, %56
  %58 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %58, %struct.bio** %6, align 8
  %59 = icmp ne %struct.bio* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = call i32 @generic_make_request(%struct.bio* %61)
  br label %57

63:                                               ; preds = %57
  %64 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %65 = call i32 @blk_unplug(%struct.request_queue* %64)
  br label %66

66:                                               ; preds = %63, %49
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @throtl_process_limit_change(%struct.throtl_data*) #1

declare dso_local i32 @total_nr_queued(%struct.throtl_data*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @throtl_log(%struct.throtl_data*, i8*, i32, ...) #1

declare dso_local i32 @throtl_select_dispatch(%struct.throtl_data*, %struct.bio_list*) #1

declare dso_local i32 @throtl_schedule_next_dispatch(%struct.throtl_data*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @blk_unplug(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
