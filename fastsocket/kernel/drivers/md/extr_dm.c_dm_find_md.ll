; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_find_md.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_find_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@_major = common dso_local global i64 0, align 8
@MINORBITS = common dso_local global i32 0, align 4
@_minor_lock = common dso_local global i32 0, align 4
@_minor_idr = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global %struct.mapped_device* null, align 8
@DMF_FREEING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapped_device* (i32)* @dm_find_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapped_device* @dm_find_md(i32 %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @MINOR(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @MAJOR(i32 %8)
  %10 = load i64, i64* @_major, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MINORBITS, align 4
  %15 = shl i32 1, %14
  %16 = icmp uge i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store %struct.mapped_device* null, %struct.mapped_device** %2, align 8
  br label %50

18:                                               ; preds = %12
  %19 = call i32 @spin_lock(i32* @_minor_lock)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.mapped_device* @idr_find(i32* @_minor_idr, i32 %20)
  store %struct.mapped_device* %21, %struct.mapped_device** %4, align 8
  %22 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %23 = icmp ne %struct.mapped_device* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %26 = load %struct.mapped_device*, %struct.mapped_device** @MINOR_ALLOCED, align 8
  %27 = icmp eq %struct.mapped_device* %25, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %30 = call i32 @dm_disk(%struct.mapped_device* %29)
  %31 = call i32 @disk_devt(i32 %30)
  %32 = call i32 @MINOR(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %37 = call i64 @dm_deleting_md(%struct.mapped_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @DMF_FREEING, align 4
  %41 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %42 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %35, %28, %24
  store %struct.mapped_device* null, %struct.mapped_device** %4, align 8
  br label %47

46:                                               ; preds = %39, %18
  br label %47

47:                                               ; preds = %46, %45
  %48 = call i32 @spin_unlock(i32* @_minor_lock)
  %49 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  store %struct.mapped_device* %49, %struct.mapped_device** %2, align 8
  br label %50

50:                                               ; preds = %47, %17
  %51 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  ret %struct.mapped_device* %51
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mapped_device* @idr_find(i32*, i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @dm_deleting_md(%struct.mapped_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
