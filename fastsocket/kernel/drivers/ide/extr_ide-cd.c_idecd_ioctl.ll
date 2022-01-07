; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_idecd_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_idecd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.cdrom_info = type { i32, i32 }

@cdrom_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @idecd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idecd_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cdrom_info*, align 8
  %11 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @cdrom_info, align 4
  %16 = call %struct.cdrom_info* @ide_drv_g(i32 %14, i32 %15)
  store %struct.cdrom_info* %16, %struct.cdrom_info** %10, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %4
  %19 = load %struct.cdrom_info*, %struct.cdrom_info** %10, align 8
  %20 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @idecd_set_spindown(i32* %20, i64 %21)
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = load %struct.cdrom_info*, %struct.cdrom_info** %10, align 8
  %25 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @idecd_get_spindown(i32* %25, i64 %26)
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.cdrom_info*, %struct.cdrom_info** %10, align 8
  %31 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.block_device*, %struct.block_device** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @generic_ide_ioctl(i32 %32, %struct.block_device* %33, i32 %34, i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.cdrom_info*, %struct.cdrom_info** %10, align 8
  %43 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %42, i32 0, i32 0
  %44 = load %struct.block_device*, %struct.block_device** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @cdrom_ioctl(i32* %43, %struct.block_device* %44, i32 %45, i32 %46, i64 %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %41, %29
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %23, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.cdrom_info* @ide_drv_g(i32, i32) #1

declare dso_local i32 @idecd_set_spindown(i32*, i64) #1

declare dso_local i32 @idecd_get_spindown(i32*, i64) #1

declare dso_local i32 @generic_ide_ioctl(i32, %struct.block_device*, i32, i64) #1

declare dso_local i32 @cdrom_ioctl(i32*, %struct.block_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
