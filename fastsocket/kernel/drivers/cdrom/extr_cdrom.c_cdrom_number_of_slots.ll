; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_number_of_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_number_of_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64 }
%struct.cdrom_changer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CD_CHANGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"entering cdrom_number_of_slots()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_number_of_slots(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_changer_info*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* @CD_CHANGER, align 4
  %8 = call i32 @cdinfo(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cdrom_changer_info* @kmalloc(i32 4, i32 %11)
  store %struct.cdrom_changer_info* %12, %struct.cdrom_changer_info** %6, align 8
  %13 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %14 = icmp ne %struct.cdrom_changer_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %20 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %21 = call i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %19, %struct.cdrom_changer_info* %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %25 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %30 = call i32 @kfree(%struct.cdrom_changer_info* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local %struct.cdrom_changer_info* @kmalloc(i32, i32) #1

declare dso_local i32 @cdrom_read_mech_status(%struct.cdrom_device_info*, %struct.cdrom_changer_info*) #1

declare dso_local i32 @kfree(%struct.cdrom_changer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
