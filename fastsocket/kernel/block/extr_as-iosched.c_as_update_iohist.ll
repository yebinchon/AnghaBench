; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_iohist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_iohist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32 }
%struct.as_io_context = type { i64, i64, i32, i32, i32, i32 }
%struct.request = type { i32 }

@BLK_RW_SYNC = common dso_local global i32 0, align 4
@AS_TASK_IORUNNING = common dso_local global i32 0, align 4
@AS_TASK_IOSTARTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAX_THINKTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*, %struct.as_io_context*, %struct.request*)* @as_update_iohist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_update_iohist(%struct.as_data* %0, %struct.as_io_context* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca %struct.as_io_context*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %4, align 8
  store %struct.as_io_context* %1, %struct.as_io_context** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = call i32 @rq_is_sync(%struct.request* %11)
  store i32 %12, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %13 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %14 = icmp eq %struct.as_io_context* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %106

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BLK_RW_SYNC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %16
  %21 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %22 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %21, i32 0, i32 5
  %23 = call i64 @atomic_read(i32* %22)
  %24 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %25 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %24, i32 0, i32 4
  %26 = call i64 @atomic_read(i32* %25)
  %27 = add i64 %23, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %29 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %28, i32 0, i32 2
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* @AS_TASK_IORUNNING, align 4
  %32 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %33 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %32, i32 0, i32 3
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @AS_TASK_IOSTARTED, align 4
  %38 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %39 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %38, i32 0, i32 3
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %36, %20
  %43 = load i32, i32* @AS_TASK_IORUNNING, align 4
  %44 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %45 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %44, i32 0, i32 3
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %54 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @MAX_THINKTIME, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i64 @min(i64 %57, i64 %59)
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %51, %48, %42
  %62 = load %struct.as_data*, %struct.as_data** %4, align 8
  %63 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @as_update_thinktime(%struct.as_data* %62, %struct.as_io_context* %63, i64 %64)
  %66 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %67 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.request*, %struct.request** %6, align 8
  %70 = call i64 @blk_rq_pos(%struct.request* %69)
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load %struct.request*, %struct.request** %6, align 8
  %74 = call i64 @blk_rq_pos(%struct.request* %73)
  %75 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %76 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* %9, align 8
  br label %86

79:                                               ; preds = %61
  %80 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %81 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.request*, %struct.request** %6, align 8
  %84 = call i64 @blk_rq_pos(%struct.request* %83)
  %85 = sub nsw i64 %82, %84
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %79, %72
  %87 = load %struct.as_data*, %struct.as_data** %4, align 8
  %88 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @as_update_seekdist(%struct.as_data* %87, %struct.as_io_context* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %36
  %92 = load %struct.request*, %struct.request** %6, align 8
  %93 = call i64 @blk_rq_pos(%struct.request* %92)
  %94 = load %struct.request*, %struct.request** %6, align 8
  %95 = call i64 @blk_rq_sectors(%struct.request* %94)
  %96 = add nsw i64 %93, %95
  %97 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %98 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @AS_TASK_IOSTARTED, align 4
  %100 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %101 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %100, i32 0, i32 3
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  %103 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %104 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock(i32* %104)
  br label %106

106:                                              ; preds = %15, %91, %16
  ret void
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @as_update_thinktime(%struct.as_data*, %struct.as_io_context*, i64) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @as_update_seekdist(%struct.as_data*, %struct.as_io_context*, i64) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
