; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_gluebi.c_gluebi_resized.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_gluebi.c_gluebi_resized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_info = type { i32, i32, i32 }
%struct.gluebi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@devices_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"got update notification for unknown UBI device %d volume %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume_info*)* @gluebi_resized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gluebi_resized(%struct.ubi_volume_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_volume_info*, align 8
  %4 = alloca %struct.gluebi_device*, align 8
  store %struct.ubi_volume_info* %0, %struct.ubi_volume_info** %3, align 8
  %5 = call i32 @mutex_lock(i32* @devices_mutex)
  %6 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.gluebi_device* @find_gluebi_nolock(i32 %8, i32 %11)
  store %struct.gluebi_device* %12, %struct.gluebi_device** %4, align 8
  %13 = load %struct.gluebi_device*, %struct.gluebi_device** %4, align 8
  %14 = icmp ne %struct.gluebi_device* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = call i32 @mutex_unlock(i32* @devices_mutex)
  %17 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @err_msg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gluebi_device*, %struct.gluebi_device** %4, align 8
  %31 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = call i32 @mutex_unlock(i32* @devices_mutex)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gluebi_device* @find_gluebi_nolock(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @err_msg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
