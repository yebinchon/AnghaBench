; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.ubi_volume_desc* }
%struct.ubi_volume_desc = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@UBI_READWRITE = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"open device %d, volume %d, mode %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vol_cdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vol_cdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ubi_volume_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @imajor(%struct.inode* %13)
  %15 = call i32 @ubi_major2num(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @UBI_READWRITE, align 4
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @UBI_READONLY, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 %36, i32 %37, i32 %38)
  store %struct.ubi_volume_desc* %39, %struct.ubi_volume_desc** %6, align 8
  %40 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %41 = call i64 @IS_ERR(%struct.ubi_volume_desc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %45 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %44)
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  store %struct.ubi_volume_desc* %47, %struct.ubi_volume_desc** %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %43, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @ubi_major2num(i32) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_volume_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_volume_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
