; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ram_open_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ram_open_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.rwrt_feature_desc = type { i32, i32 }

@CDF_RWRT = common dso_local global i64 0, align 8
@CD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can open for random write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_ram_open_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ram_open_write(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.rwrt_feature_desc, align 4
  %5 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %6 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %7 = call i32 @cdrom_has_defect_mgt(%struct.cdrom_device_info* %6)
  store i32 %7, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %13 = call i32 @cdrom_get_random_writable(%struct.cdrom_device_info* %12, %struct.rwrt_feature_desc* %4)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %11
  %18 = load i64, i64* @CDF_RWRT, align 8
  %19 = getelementptr inbounds %struct.rwrt_feature_desc, %struct.rwrt_feature_desc* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be16_to_cpu(i32 %20)
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rwrt_feature_desc, %struct.rwrt_feature_desc* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @CD_OPEN, align 4
  %32 = call i32 @cdinfo(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %15, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @cdrom_has_defect_mgt(%struct.cdrom_device_info*) #1

declare dso_local i32 @cdrom_get_random_writable(%struct.cdrom_device_info*, %struct.rwrt_feature_desc*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @cdinfo(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
