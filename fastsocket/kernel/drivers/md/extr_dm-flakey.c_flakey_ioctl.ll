; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.flakey_c* }
%struct.flakey_c = type { i64, %struct.dm_dev* }
%struct.dm_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i64)* @flakey_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_ioctl(%struct.dm_target* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.flakey_c*, align 8
  %8 = alloca %struct.dm_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 1
  %12 = load %struct.flakey_c*, %struct.flakey_c** %11, align 8
  store %struct.flakey_c* %12, %struct.flakey_c** %7, align 8
  %13 = load %struct.flakey_c*, %struct.flakey_c** %7, align 8
  %14 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %13, i32 0, i32 1
  %15 = load %struct.dm_dev*, %struct.dm_dev** %14, align 8
  store %struct.dm_dev* %15, %struct.dm_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.flakey_c*, %struct.flakey_c** %7, align 8
  %17 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %25 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @i_size_read(i32 %28)
  %30 = load i32, i32* @SECTOR_SHIFT, align 4
  %31 = zext i32 %30 to i64
  %32 = ashr i64 %29, %31
  %33 = icmp ne i64 %23, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %20, %3
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @scsi_verify_blk_ioctl(i32* null, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %51

41:                                               ; preds = %37
  %42 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %43 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %46 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @__blkdev_driver_ioctl(%struct.TYPE_2__* %44, i32 %47, i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %41, %40
  %52 = phi i32 [ %38, %40 ], [ %50, %41 ]
  ret i32 %52
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
