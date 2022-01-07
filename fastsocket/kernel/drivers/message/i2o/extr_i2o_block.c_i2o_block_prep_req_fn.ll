; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_prep_req_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_prep_req_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.i2o_block_device* }
%struct.i2o_block_device = type { i32 }
%struct.request = type { i32, %struct.i2o_block_request* }
%struct.i2o_block_request = type { %struct.request*, %struct.i2o_block_device* }

@.str = private unnamed_addr constant [30 x i8] c"block device already removed\0A\00", align 1
@BLKPREP_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to allocate i2o_block_request!\0A\00", align 1
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@REQ_DONTPREP = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @i2o_block_prep_req_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_prep_req_fn(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.i2o_block_device*, align 8
  %7 = alloca %struct.i2o_block_request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.i2o_block_device*, %struct.i2o_block_device** %9, align 8
  store %struct.i2o_block_device* %10, %struct.i2o_block_device** %6, align 8
  %11 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %12 = icmp ne %struct.i2o_block_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @osm_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = load %struct.i2o_block_request*, %struct.i2o_block_request** %22, align 8
  %24 = icmp ne %struct.i2o_block_request* %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = call %struct.i2o_block_request* (...) @i2o_block_request_alloc()
  store %struct.i2o_block_request* %26, %struct.i2o_block_request** %7, align 8
  %27 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %28 = call i64 @IS_ERR(%struct.i2o_block_request* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @osm_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %35 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %36 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %35, i32 0, i32 1
  store %struct.i2o_block_device* %34, %struct.i2o_block_device** %36, align 8
  %37 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 1
  store %struct.i2o_block_request* %37, %struct.i2o_block_request** %39, align 8
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %42 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %41, i32 0, i32 0
  store %struct.request* %40, %struct.request** %42, align 8
  br label %43

43:                                               ; preds = %33, %20
  %44 = load i32, i32* @REQ_DONTPREP, align 4
  %45 = load %struct.request*, %struct.request** %5, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %30, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local %struct.i2o_block_request* @i2o_block_request_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.i2o_block_request*) #1

declare dso_local i32 @osm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
