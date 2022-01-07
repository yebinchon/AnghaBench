; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_change_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_change_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.block_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LO_FLAGS_READ_ONLY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@max_part = common dso_local global i64 0, align 8
@BLKRRPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.block_device*, i32)* @loop_change_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_change_fd(%struct.loop_device* %0, %struct.block_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %15 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @Lo_bound, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %90

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %24 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %90

30:                                               ; preds = %20
  %31 = load i32, i32* @EBADF, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.file* @fget(i32 %33)
  store %struct.file* %34, %struct.file** %8, align 8
  %35 = load %struct.file*, %struct.file** %8, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %90

38:                                               ; preds = %30
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %10, align 8
  %44 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %45 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %44, i32 0, i32 2
  %46 = load %struct.file*, %struct.file** %45, align 8
  store %struct.file* %46, %struct.file** %9, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @S_ISREG(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %38
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @S_ISBLK(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %87

61:                                               ; preds = %54, %38
  %62 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %63 = load %struct.file*, %struct.file** %8, align 8
  %64 = call i64 @get_loop_size(%struct.loop_device* %62, %struct.file* %63)
  %65 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %66 = load %struct.file*, %struct.file** %9, align 8
  %67 = call i64 @get_loop_size(%struct.loop_device* %65, %struct.file* %66)
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %87

70:                                               ; preds = %61
  %71 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %72 = load %struct.file*, %struct.file** %8, align 8
  %73 = call i32 @loop_switch(%struct.loop_device* %71, %struct.file* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %87

77:                                               ; preds = %70
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = call i32 @fput(%struct.file* %78)
  %80 = load i64, i64* @max_part, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.block_device*, %struct.block_device** %6, align 8
  %84 = load i32, i32* @BLKRRPART, align 4
  %85 = call i32 @ioctl_by_bdev(%struct.block_device* %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %82, %77
  store i32 0, i32* %4, align 4
  br label %92

87:                                               ; preds = %76, %69, %60
  %88 = load %struct.file*, %struct.file** %8, align 8
  %89 = call i32 @fput(%struct.file* %88)
  br label %90

90:                                               ; preds = %87, %37, %29, %19
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @get_loop_size(%struct.loop_device*, %struct.file*) #1

declare dso_local i32 @loop_switch(%struct.loop_device*, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @ioctl_by_bdev(%struct.block_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
