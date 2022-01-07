; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvbdev.c_dvb_generic_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvbdev.c_dvb_generic_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_generic_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dvb_device*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.dvb_device*, %struct.dvb_device** %12, align 8
  store %struct.dvb_device* %13, %struct.dvb_device** %10, align 8
  %14 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %15 = icmp ne %struct.dvb_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %21 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %33 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dvb_usercopy(%struct.inode* %28, %struct.file* %29, i32 %30, i64 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %27, %24, %16
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @dvb_usercopy(%struct.inode*, %struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
