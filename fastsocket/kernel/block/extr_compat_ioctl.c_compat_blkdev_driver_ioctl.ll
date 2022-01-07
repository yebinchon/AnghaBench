; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_compat_ioctl.c_compat_blkdev_driver_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_compat_ioctl.c_compat_blkdev_driver_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @compat_blkdev_driver_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_blkdev_driver_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %39 [
    i32 141, label %11
    i32 144, label %11
    i32 145, label %11
    i32 151, label %11
    i32 142, label %11
    i32 147, label %11
    i32 143, label %11
    i32 140, label %11
    i32 150, label %11
    i32 149, label %11
    i32 148, label %11
    i32 157, label %17
    i32 177, label %17
    i32 166, label %17
    i32 160, label %17
    i32 171, label %17
    i32 170, label %17
    i32 163, label %17
    i32 168, label %17
    i32 154, label %17
    i32 209, label %23
    i32 183, label %29
    i32 219, label %35
    i32 146, label %35
    i32 152, label %35
    i32 153, label %35
    i32 816, label %35
    i32 164, label %35
    i32 165, label %35
    i32 159, label %35
    i32 175, label %35
    i32 155, label %35
    i32 158, label %35
    i32 167, label %35
    i32 169, label %35
    i32 176, label %35
    i32 178, label %35
    i32 174, label %35
    i32 173, label %35
    i32 161, label %35
    i32 156, label %35
    i32 172, label %35
    i32 162, label %35
    i32 214, label %35
    i32 201, label %35
    i32 212, label %35
    i32 211, label %35
    i32 203, label %35
    i32 204, label %35
    i32 198, label %35
    i32 199, label %35
    i32 217, label %35
    i32 196, label %35
    i32 197, label %35
    i32 215, label %35
    i32 188, label %35
    i32 202, label %35
    i32 195, label %35
    i32 200, label %35
    i32 213, label %35
    i32 218, label %35
    i32 191, label %35
    i32 194, label %35
    i32 189, label %35
    i32 206, label %35
    i32 207, label %35
    i32 205, label %35
    i32 208, label %35
    i32 210, label %35
    i32 180, label %35
    i32 179, label %35
    i32 181, label %35
    i32 133, label %38
    i32 129, label %38
    i32 134, label %38
    i32 139, label %38
    i32 131, label %38
    i32 135, label %38
    i32 130, label %38
    i32 132, label %38
    i32 128, label %38
    i32 138, label %38
    i32 136, label %38
    i32 137, label %38
    i32 216, label %38
    i32 182, label %38
    i32 193, label %38
    i32 184, label %38
    i32 185, label %38
    i32 186, label %38
    i32 190, label %38
    i32 187, label %38
    i32 192, label %38
  ]

11:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @compat_hdio_ioctl(%struct.block_device* %12, i32 %13, i32 %14, i64 %15)
  store i32 %16, i32* %5, align 4
  br label %48

17:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %18 = load %struct.block_device*, %struct.block_device** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @compat_fd_ioctl(%struct.block_device* %18, i32 %19, i32 %20, i64 %21)
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load %struct.block_device*, %struct.block_device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @compat_cdrom_read_audio(%struct.block_device* %24, i32 %25, i32 %26, i64 %27)
  store i32 %28, i32* %5, align 4
  br label %48

29:                                               ; preds = %4
  %30 = load %struct.block_device*, %struct.block_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @compat_cdrom_generic_command(%struct.block_device* %30, i32 %31, i32 %32, i64 %33)
  store i32 %34, i32* %5, align 4
  br label %48

35:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @compat_ptr(i64 %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %35
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOIOCTLCMD, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %38
  %43 = load %struct.block_device*, %struct.block_device** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @__blkdev_driver_ioctl(%struct.block_device* %43, i32 %44, i32 %45, i64 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %39, %29, %23, %17, %11
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @compat_hdio_ioctl(%struct.block_device*, i32, i32, i64) #1

declare dso_local i32 @compat_fd_ioctl(%struct.block_device*, i32, i32, i64) #1

declare dso_local i32 @compat_cdrom_read_audio(%struct.block_device*, i32, i32, i64) #1

declare dso_local i32 @compat_cdrom_generic_command(%struct.block_device*, i32, i32, i64) #1

declare dso_local i64 @compat_ptr(i64) #1

declare dso_local i32 @__blkdev_driver_ioctl(%struct.block_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
