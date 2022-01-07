; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_request_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_request_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.request = type { i64, %struct.i2o_block_request* }
%struct.i2o_block_request = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2o_block_delayed_request = type { i32, %struct.request_queue* }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@I2O_BLOCK_MAX_OPEN_REQUESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"transfer error\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@i2o_block_delayed_request_fn = common dso_local global i32 0, align 4
@i2o_block_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@I2O_BLOCK_RETRY_TIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @i2o_block_request_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_block_request_fn(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.i2o_block_delayed_request*, align 8
  %5 = alloca %struct.i2o_block_request*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  br label %7

7:                                                ; preds = %84, %55, %40, %1
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = call i32 @blk_queue_plugged(%struct.request_queue* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %85

12:                                               ; preds = %7
  %13 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %14 = call %struct.request* @blk_peek_request(%struct.request_queue* %13)
  store %struct.request* %14, %struct.request** %3, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %85

18:                                               ; preds = %12
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REQ_TYPE_FS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %18
  %25 = load %struct.request*, %struct.request** %3, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 1
  %27 = load %struct.i2o_block_request*, %struct.i2o_block_request** %26, align 8
  store %struct.i2o_block_request* %27, %struct.i2o_block_request** %5, align 8
  %28 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %29 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @I2O_BLOCK_MAX_OPEN_REQUESTS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.request*, %struct.request** %3, align 8
  %38 = call i32 @i2o_block_transfer(%struct.request* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = call i32 @blk_start_request(%struct.request* %41)
  br label %7

43:                                               ; preds = %36
  %44 = call i32 @osm_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %85

50:                                               ; preds = %46
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.i2o_block_delayed_request* @kmalloc(i32 16, i32 %51)
  store %struct.i2o_block_delayed_request* %52, %struct.i2o_block_delayed_request** %4, align 8
  %53 = load %struct.i2o_block_delayed_request*, %struct.i2o_block_delayed_request** %4, align 8
  %54 = icmp ne %struct.i2o_block_delayed_request* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %7

56:                                               ; preds = %50
  %57 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %58 = load %struct.i2o_block_delayed_request*, %struct.i2o_block_delayed_request** %4, align 8
  %59 = getelementptr inbounds %struct.i2o_block_delayed_request, %struct.i2o_block_delayed_request* %58, i32 0, i32 1
  store %struct.request_queue* %57, %struct.request_queue** %59, align 8
  %60 = load %struct.i2o_block_delayed_request*, %struct.i2o_block_delayed_request** %4, align 8
  %61 = getelementptr inbounds %struct.i2o_block_delayed_request, %struct.i2o_block_delayed_request* %60, i32 0, i32 0
  %62 = load i32, i32* @i2o_block_delayed_request_fn, align 4
  %63 = call i32 @INIT_DELAYED_WORK(i32* %61, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i2o_block_driver, i32 0, i32 0), align 4
  %65 = load %struct.i2o_block_delayed_request*, %struct.i2o_block_delayed_request** %4, align 8
  %66 = getelementptr inbounds %struct.i2o_block_delayed_request, %struct.i2o_block_delayed_request* %65, i32 0, i32 0
  %67 = load i32, i32* @I2O_BLOCK_RETRY_TIME, align 4
  %68 = call i32 @queue_delayed_work(i32 %64, i32* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load %struct.i2o_block_delayed_request*, %struct.i2o_block_delayed_request** %4, align 8
  %72 = call i32 @kfree(%struct.i2o_block_delayed_request* %71)
  br label %76

73:                                               ; preds = %56
  %74 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %75 = call i32 @blk_stop_queue(%struct.request_queue* %74)
  br label %85

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %18
  %78 = load %struct.request*, %struct.request** %3, align 8
  %79 = call i32 @blk_start_request(%struct.request* %78)
  %80 = load %struct.request*, %struct.request** %3, align 8
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 @__blk_end_request_all(%struct.request* %80, i32 %82)
  br label %84

84:                                               ; preds = %77, %76
  br label %7

85:                                               ; preds = %73, %49, %17, %7
  ret void
}

declare dso_local i32 @blk_queue_plugged(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i32 @i2o_block_transfer(%struct.request*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @osm_info(i8*) #1

declare dso_local %struct.i2o_block_delayed_request* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.i2o_block_delayed_request*) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
