; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_register_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_register_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.origin = type { %struct.block_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*)* @register_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_snapshot(%struct.dm_snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.origin*, align 8
  %5 = alloca %struct.origin*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.origin* null, %struct.origin** %5, align 8
  %8 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %9 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.block_device*, %struct.block_device** %11, align 8
  store %struct.block_device* %12, %struct.block_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.origin* @kmalloc(i32 16, i32 %13)
  store %struct.origin* %14, %struct.origin** %5, align 8
  %15 = load %struct.origin*, %struct.origin** %5, align 8
  %16 = icmp ne %struct.origin* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = call i32 @down_write(i32* @_origins_lock)
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %23 = call i32 @__validate_exception_handover(%struct.dm_snapshot* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.origin*, %struct.origin** %5, align 8
  %28 = call i32 @kfree(%struct.origin* %27)
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.block_device*, %struct.block_device** %6, align 8
  %31 = call %struct.origin* @__lookup_origin(%struct.block_device* %30)
  store %struct.origin* %31, %struct.origin** %4, align 8
  %32 = load %struct.origin*, %struct.origin** %4, align 8
  %33 = icmp ne %struct.origin* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.origin*, %struct.origin** %5, align 8
  %36 = call i32 @kfree(%struct.origin* %35)
  br label %47

37:                                               ; preds = %29
  %38 = load %struct.origin*, %struct.origin** %5, align 8
  store %struct.origin* %38, %struct.origin** %4, align 8
  %39 = load %struct.origin*, %struct.origin** %4, align 8
  %40 = getelementptr inbounds %struct.origin, %struct.origin* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.block_device*, %struct.block_device** %6, align 8
  %43 = load %struct.origin*, %struct.origin** %4, align 8
  %44 = getelementptr inbounds %struct.origin, %struct.origin* %43, i32 0, i32 0
  store %struct.block_device* %42, %struct.block_device** %44, align 8
  %45 = load %struct.origin*, %struct.origin** %4, align 8
  %46 = call i32 @__insert_origin(%struct.origin* %45)
  br label %47

47:                                               ; preds = %37, %34
  %48 = load %struct.origin*, %struct.origin** %4, align 8
  %49 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %50 = call i32 @__insert_snapshot(%struct.origin* %48, %struct.dm_snapshot* %49)
  br label %51

51:                                               ; preds = %47, %26
  %52 = call i32 @up_write(i32* @_origins_lock)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.origin* @kmalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__validate_exception_handover(%struct.dm_snapshot*) #1

declare dso_local i32 @kfree(%struct.origin*) #1

declare dso_local %struct.origin* @__lookup_origin(%struct.block_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__insert_origin(%struct.origin*) #1

declare dso_local i32 @__insert_snapshot(%struct.origin*, %struct.dm_snapshot*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
