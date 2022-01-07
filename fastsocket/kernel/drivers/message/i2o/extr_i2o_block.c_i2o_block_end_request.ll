; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_end_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request_queue*, %struct.i2o_block_request* }
%struct.request_queue = type { i32 }
%struct.i2o_block_request = type { i32, %struct.i2o_block_device* }
%struct.i2o_block_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32, i32)* @i2o_block_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_block_end_request(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_block_request*, align 8
  %8 = alloca %struct.i2o_block_device*, align 8
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 1
  %13 = load %struct.i2o_block_request*, %struct.i2o_block_request** %12, align 8
  store %struct.i2o_block_request* %13, %struct.i2o_block_request** %7, align 8
  %14 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %15 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %14, i32 0, i32 1
  %16 = load %struct.i2o_block_device*, %struct.i2o_block_device** %15, align 8
  store %struct.i2o_block_device* %16, %struct.i2o_block_device** %8, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  store %struct.request_queue* %19, %struct.request_queue** %9, align 8
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @blk_end_request(%struct.request* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @blk_end_request_all(%struct.request* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_lock_irqsave(i32 %37, i64 %38)
  %40 = load %struct.i2o_block_device*, %struct.i2o_block_device** %8, align 8
  %41 = call i64 @likely(%struct.i2o_block_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.i2o_block_device*, %struct.i2o_block_device** %8, align 8
  %45 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %49 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %48, i32 0, i32 0
  %50 = call i32 @list_del(i32* %49)
  br label %51

51:                                               ; preds = %43, %34
  %52 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %53 = call i32 @blk_start_queue(%struct.request_queue* %52)
  %54 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  %59 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %60 = call i32 @i2o_block_sglist_free(%struct.i2o_block_request* %59)
  %61 = load %struct.i2o_block_request*, %struct.i2o_block_request** %7, align 8
  %62 = call i32 @i2o_block_request_free(%struct.i2o_block_request* %61)
  ret void
}

declare dso_local i64 @blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @likely(%struct.i2o_block_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @blk_start_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @i2o_block_sglist_free(%struct.i2o_block_request*) #1

declare dso_local i32 @i2o_block_request_free(%struct.i2o_block_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
