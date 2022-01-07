; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dm_io_client_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dm_io_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_client = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIN_IOS = common dso_local global i32 0, align 4
@_dm_io_cache = common dso_local global i32 0, align 4
@MIN_BIOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_io_client* @dm_io_client_create() #0 {
  %1 = alloca %struct.dm_io_client*, align 8
  %2 = alloca %struct.dm_io_client*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.dm_io_client* @kmalloc(i32 16, i32 %3)
  store %struct.dm_io_client* %4, %struct.dm_io_client** %2, align 8
  %5 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %6 = icmp ne %struct.dm_io_client* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dm_io_client* @ERR_PTR(i32 %9)
  store %struct.dm_io_client* %10, %struct.dm_io_client** %1, align 8
  br label %50

11:                                               ; preds = %0
  %12 = load i32, i32* @MIN_IOS, align 4
  %13 = load i32, i32* @_dm_io_cache, align 4
  %14 = call i64 @mempool_create_slab_pool(i32 %12, i32 %13)
  %15 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %16 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %18 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %34

22:                                               ; preds = %11
  %23 = load i32, i32* @MIN_BIOS, align 4
  %24 = call i32 @bioset_create(i32 %23, i32 0)
  %25 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %26 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %28 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %22
  %33 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  store %struct.dm_io_client* %33, %struct.dm_io_client** %1, align 8
  br label %50

34:                                               ; preds = %31, %21
  %35 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %36 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %41 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mempool_destroy(i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %46 = call i32 @kfree(%struct.dm_io_client* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.dm_io_client* @ERR_PTR(i32 %48)
  store %struct.dm_io_client* %49, %struct.dm_io_client** %1, align 8
  br label %50

50:                                               ; preds = %44, %32, %7
  %51 = load %struct.dm_io_client*, %struct.dm_io_client** %1, align 8
  ret %struct.dm_io_client* %51
}

declare dso_local %struct.dm_io_client* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_io_client* @ERR_PTR(i32) #1

declare dso_local i64 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @bioset_create(i32, i32) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @kfree(%struct.dm_io_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
