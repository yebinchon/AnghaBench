; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_request_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2o_block_request = type { i32, i32 }

@i2o_blk_req_pool = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2O_MAX_PHYS_SEGMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2o_block_request* ()* @i2o_block_request_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2o_block_request* @i2o_block_request_alloc() #0 {
  %1 = alloca %struct.i2o_block_request*, align 8
  %2 = alloca %struct.i2o_block_request*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i2o_blk_req_pool, i32 0, i32 0), align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.i2o_block_request* @mempool_alloc(i32 %3, i32 %4)
  store %struct.i2o_block_request* %5, %struct.i2o_block_request** %2, align 8
  %6 = load %struct.i2o_block_request*, %struct.i2o_block_request** %2, align 8
  %7 = icmp ne %struct.i2o_block_request* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.i2o_block_request* @ERR_PTR(i32 %10)
  store %struct.i2o_block_request* %11, %struct.i2o_block_request** %1, align 8
  br label %22

12:                                               ; preds = %0
  %13 = load %struct.i2o_block_request*, %struct.i2o_block_request** %2, align 8
  %14 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.i2o_block_request*, %struct.i2o_block_request** %2, align 8
  %17 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I2O_MAX_PHYS_SEGMENTS, align 4
  %20 = call i32 @sg_init_table(i32 %18, i32 %19)
  %21 = load %struct.i2o_block_request*, %struct.i2o_block_request** %2, align 8
  store %struct.i2o_block_request* %21, %struct.i2o_block_request** %1, align 8
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.i2o_block_request*, %struct.i2o_block_request** %1, align 8
  ret %struct.i2o_block_request* %23
}

declare dso_local %struct.i2o_block_request* @mempool_alloc(i32, i32) #1

declare dso_local %struct.i2o_block_request* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
