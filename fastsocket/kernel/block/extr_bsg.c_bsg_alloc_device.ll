; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BSG_DEFAULT_CMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_device* ()* @bsg_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_device* @bsg_alloc_device() #0 {
  %1 = alloca %struct.bsg_device*, align 8
  %2 = alloca %struct.bsg_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.bsg_device* @kzalloc(i32 28, i32 %3)
  store %struct.bsg_device* %4, %struct.bsg_device** %2, align 8
  %5 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %6 = icmp ne %struct.bsg_device* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store %struct.bsg_device* null, %struct.bsg_device** %1, align 8
  br label %35

12:                                               ; preds = %0
  %13 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %14 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %13, i32 0, i32 6
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load i32, i32* @BSG_DEFAULT_CMDS, align 4
  %17 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %18 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %20 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %23 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %26 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %25, i32 0, i32 2
  %27 = call i32 @INIT_HLIST_NODE(i32* %26)
  %28 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %29 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %28, i32 0, i32 1
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %32 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %31, i32 0, i32 0
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  store %struct.bsg_device* %34, %struct.bsg_device** %1, align 8
  br label %35

35:                                               ; preds = %12, %11
  %36 = load %struct.bsg_device*, %struct.bsg_device** %1, align 8
  ret %struct.bsg_device* %36
}

declare dso_local %struct.bsg_device* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
