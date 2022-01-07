; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dasd_block_tasklet = common dso_local global i64 0, align 8
@dasd_block_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_block* @dasd_alloc_block() #0 {
  %1 = alloca %struct.dasd_block*, align 8
  %2 = alloca %struct.dasd_block*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.dasd_block* @kzalloc(i32 48, i32 %3)
  store %struct.dasd_block* %4, %struct.dasd_block** %2, align 8
  %5 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %6 = icmp ne %struct.dasd_block* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dasd_block* @ERR_PTR(i32 %9)
  store %struct.dasd_block* %10, %struct.dasd_block** %1, align 8
  br label %51

11:                                               ; preds = %0
  %12 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 7
  %14 = call i32 @atomic_set(i32* %13, i32 -1)
  %15 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %15, i32 0, i32 6
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %18, i32 0, i32 5
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %21, i32 0, i32 4
  %23 = load i64, i64* @dasd_block_tasklet, align 8
  %24 = inttoptr i64 %23 to void (i64)*
  %25 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %26 = ptrtoint %struct.dasd_block* %25 to i64
  %27 = call i32 @tasklet_init(i32* %22, void (i64)* %24, i64 %26)
  %28 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %29 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %32 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %35 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %34, i32 0, i32 1
  %36 = call i32 @init_timer(%struct.TYPE_4__* %35)
  %37 = load i32, i32* @dasd_block_timeout, align 4
  %38 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %39 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %42 = ptrtoint %struct.dasd_block* %41 to i64
  %43 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %44 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %47 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  store %struct.dasd_block* %50, %struct.dasd_block** %1, align 8
  br label %51

51:                                               ; preds = %11, %7
  %52 = load %struct.dasd_block*, %struct.dasd_block** %1, align 8
  ret %struct.dasd_block* %52
}

declare dso_local %struct.dasd_block* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_block* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
