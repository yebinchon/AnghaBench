; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.ide_tape_obj = type { i32* }

@ide_tape_obj = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @idetape_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_tape_obj*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ide_tape_obj, align 4
  %16 = call %struct.ide_tape_obj* @ide_drv_g(i32 %14, i32 %15)
  store %struct.ide_tape_obj* %16, %struct.ide_tape_obj** %9, align 8
  %17 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %9, align 8
  %18 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.block_device*, %struct.block_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @generic_ide_ioctl(i32* %20, %struct.block_device* %21, i32 %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @idetape_blkdev_ioctl(i32* %30, i32 %31, i64 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local %struct.ide_tape_obj* @ide_drv_g(i32, i32) #1

declare dso_local i32 @generic_ide_ioctl(i32*, %struct.block_device*, i32, i64) #1

declare dso_local i32 @idetape_blkdev_ioctl(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
