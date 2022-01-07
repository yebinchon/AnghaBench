; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_select_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_select_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"entering CDROM_SELECT_DISC\0A\00", align 1
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i64 0, align 8
@CDSL_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CD_CHANGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Using generic cdrom_select_disc()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_select_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_select_disc(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cdinfo(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CDC_SELECT_DISC, align 4
  %9 = call i32 @CDROM_CAN(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CDSL_CURRENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @CDSL_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %18, %14
  %34 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %35 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.cdrom_device_info*, i64)**
  %39 = load i32 (%struct.cdrom_device_info*, i64)*, i32 (%struct.cdrom_device_info*, i64)** %38, align 8
  %40 = icmp ne i32 (%struct.cdrom_device_info*, i64)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %43 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.cdrom_device_info*, i64)**
  %47 = load i32 (%struct.cdrom_device_info*, i64)*, i32 (%struct.cdrom_device_info*, i64)** %46, align 8
  %48 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 %47(%struct.cdrom_device_info* %48, i64 %49)
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %33
  %52 = load i32, i32* @CD_CHANGER, align 4
  %53 = call i32 @cdinfo(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @cdrom_select_disc(%struct.cdrom_device_info* %54, i64 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %41, %29, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_select_disc(%struct.cdrom_device_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
