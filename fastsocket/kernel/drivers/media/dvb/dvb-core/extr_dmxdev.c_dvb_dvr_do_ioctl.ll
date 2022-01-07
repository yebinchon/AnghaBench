; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dvr_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dvr_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.dmxdev* }
%struct.dmxdev = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i8*)* @dvb_dvr_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dvr_do_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dvb_device*, align 8
  %11 = alloca %struct.dmxdev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.dvb_device*, %struct.dvb_device** %15, align 8
  store %struct.dvb_device* %16, %struct.dvb_device** %10, align 8
  %17 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %18 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %17, i32 0, i32 0
  %19 = load %struct.dmxdev*, %struct.dmxdev** %18, align 8
  store %struct.dmxdev* %19, %struct.dmxdev** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %23 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %35 [
    i32 128, label %31
  ]

31:                                               ; preds = %29
  %32 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @dvb_dvr_set_buffer_size(%struct.dmxdev* %32, i64 %33)
  store i32 %34, i32* %13, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dvb_dvr_set_buffer_size(%struct.dmxdev*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
