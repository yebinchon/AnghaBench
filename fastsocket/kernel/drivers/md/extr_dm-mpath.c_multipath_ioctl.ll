; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.multipath* }
%struct.multipath = type { i32, i32, i64, i64, %struct.pgpath* }
%struct.pgpath = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.block_device* }
%struct.block_device = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i64)* @multipath_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_ioctl(%struct.dm_target* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.multipath*, align 8
  %8 = alloca %struct.pgpath*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 1
  %15 = load %struct.multipath*, %struct.multipath** %14, align 8
  store %struct.multipath* %15, %struct.multipath** %7, align 8
  store %struct.block_device* null, %struct.block_device** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.multipath*, %struct.multipath** %7, align 8
  %17 = getelementptr inbounds %struct.multipath, %struct.multipath* %16, i32 0, i32 1
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.multipath*, %struct.multipath** %7, align 8
  %21 = getelementptr inbounds %struct.multipath, %struct.multipath* %20, i32 0, i32 4
  %22 = load %struct.pgpath*, %struct.pgpath** %21, align 8
  %23 = icmp ne %struct.pgpath* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.multipath*, %struct.multipath** %7, align 8
  %26 = call i32 @__choose_pgpath(%struct.multipath* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.multipath*, %struct.multipath** %7, align 8
  %29 = getelementptr inbounds %struct.multipath, %struct.multipath* %28, i32 0, i32 4
  %30 = load %struct.pgpath*, %struct.pgpath** %29, align 8
  store %struct.pgpath* %30, %struct.pgpath** %8, align 8
  %31 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %32 = icmp ne %struct.pgpath* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %35 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.block_device*, %struct.block_device** %38, align 8
  store %struct.block_device* %39, %struct.block_device** %9, align 8
  %40 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %41 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %33, %27
  %47 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %48 = icmp ne %struct.pgpath* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.multipath*, %struct.multipath** %7, align 8
  %51 = getelementptr inbounds %struct.multipath, %struct.multipath* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %56 = icmp ne %struct.pgpath* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.multipath*, %struct.multipath** %7, align 8
  %59 = getelementptr inbounds %struct.multipath, %struct.multipath* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %49
  %63 = load i32, i32* @ENOTCONN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %72

65:                                               ; preds = %57, %54
  %66 = load %struct.block_device*, %struct.block_device** %9, align 8
  %67 = icmp ne %struct.block_device* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.multipath*, %struct.multipath** %7, align 8
  %74 = getelementptr inbounds %struct.multipath, %struct.multipath* %73, i32 0, i32 1
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %72
  %80 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %81 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.block_device*, %struct.block_device** %9, align 8
  %84 = getelementptr inbounds %struct.block_device, %struct.block_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @i_size_read(i32 %85)
  %87 = load i32, i32* @SECTOR_SHIFT, align 4
  %88 = zext i32 %87 to i64
  %89 = ashr i64 %86, %88
  %90 = icmp ne i64 %82, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @scsi_verify_blk_ioctl(i32* null, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %79, %72
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @ENOTCONN, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32, i32* @current, align 4
  %101 = call i32 @fatal_signal_pending(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @kmultipathd, align 4
  %105 = load %struct.multipath*, %struct.multipath** %7, align 8
  %106 = getelementptr inbounds %struct.multipath, %struct.multipath* %105, i32 0, i32 0
  %107 = call i32 @queue_work(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %99, %94
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %118

112:                                              ; preds = %108
  %113 = load %struct.block_device*, %struct.block_device** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @__blkdev_driver_ioctl(%struct.block_device* %113, i64 %114, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %112, %111
  %119 = phi i32 [ %109, %111 ], [ %117, %112 ]
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__choose_pgpath(%struct.multipath*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @scsi_verify_blk_ioctl(i32*, i32) #1

declare dso_local i32 @fatal_signal_pending(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @__blkdev_driver_ioctl(%struct.block_device*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
