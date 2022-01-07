; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_get_exclusive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_get_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%d users for volume %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UBI_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume_desc*)* @get_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_exclusive(%struct.ubi_volume_desc* %0) #0 {
  %2 = alloca %struct.ubi_volume_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %2, align 8
  %6 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %7 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 1
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  store %struct.ubi_volume* %8, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubi_assert(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %34 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dbg_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %43 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %45 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %47 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @UBI_EXCLUSIVE, align 4
  %50 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %51 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %39, %31
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @dbg_err(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
