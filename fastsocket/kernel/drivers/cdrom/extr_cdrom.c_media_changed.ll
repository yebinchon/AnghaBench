; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_media_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.cdrom_device_info*, i32)* }

@CDC_MEDIA_CHANGED = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_changed(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 1
  %10 = shl i32 1, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @CDC_MEDIA_CHANGED, align 4
  %21 = call i32 @CDROM_CAN(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.cdrom_device_info*, i32)*, i64 (%struct.cdrom_device_info*, i32)** %29, align 8
  %31 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %32 = load i32, i32* @CDSL_CURRENT, align 4
  %33 = call i64 %30(%struct.cdrom_device_info* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %37 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %36, i32 0, i32 0
  store i32 3, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %41 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i32, i32* %6, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %46 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @CDROM_CAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
