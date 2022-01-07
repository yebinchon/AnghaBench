; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-linear.c_linear_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-linear.c_linear_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, i64 }
%struct.linear_c = type { i64, %struct.dm_dev* }
%struct.dm_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i64)* @linear_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_ioctl(%struct.dm_target* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.linear_c*, align 8
  %8 = alloca %struct.dm_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.linear_c*
  store %struct.linear_c* %13, %struct.linear_c** %7, align 8
  %14 = load %struct.linear_c*, %struct.linear_c** %7, align 8
  %15 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %14, i32 0, i32 1
  %16 = load %struct.dm_dev*, %struct.dm_dev** %15, align 8
  store %struct.dm_dev* %16, %struct.dm_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.linear_c*, %struct.linear_c** %7, align 8
  %18 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %26 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @i_size_read(i32 %29)
  %31 = load i32, i32* @SECTOR_SHIFT, align 4
  %32 = zext i32 %31 to i64
  %33 = ashr i64 %30, %32
  %34 = icmp ne i64 %24, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21, %3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @scsi_verify_blk_ioctl(i32* null, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %52

42:                                               ; preds = %38
  %43 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %44 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %47 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @__blkdev_driver_ioctl(%struct.TYPE_2__* %45, i32 %48, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %42, %41
  %53 = phi i32 [ %39, %41 ], [ %51, %42 ]
  ret i32 %53
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @scsi_verify_blk_ioctl(i32*, i32) #1

declare dso_local i32 @__blkdev_driver_ioctl(%struct.TYPE_2__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
