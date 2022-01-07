; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_disc_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_disc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"entering CDROM_DISC_STATUS\0A\00", align 1
@CDS_AUDIO = common dso_local global i32 0, align 4
@CDS_MIXED = common dso_local global i32 0, align 4
@CDS_XA_2_2 = common dso_local global i32 0, align 4
@CDS_XA_2_1 = common dso_local global i32 0, align 4
@CDS_DATA_1 = common dso_local global i32 0, align 4
@CD_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"This disc doesn't have any tracks I recognize!\0A\00", align 1
@CDS_NO_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_ioctl_disc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_disc_status(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %5 = load i32, i32* @CD_DO_IOCTL, align 4
  %6 = call i32 @cdinfo(i32 %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %8 = call i32 @cdrom_count_tracks(%struct.cdrom_device_info* %7, %struct.TYPE_3__* %4)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @CDS_AUDIO, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %27, %23, %19
  %34 = load i32, i32* @CDS_MIXED, align 4
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @CDS_XA_2_2, align 4
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CDS_XA_2_1, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CDS_DATA_1, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @CD_WARNING, align 4
  %55 = call i32 @cdinfo(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @CDS_NO_INFO, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %51, %45, %39, %33, %31, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @cdrom_count_tracks(%struct.cdrom_device_info*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
