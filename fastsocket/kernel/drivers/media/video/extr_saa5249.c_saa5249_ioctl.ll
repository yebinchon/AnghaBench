; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5249.c_saa5249_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5249.c_saa5249_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa5249_device = type { i32 }

@do_saa5249_ioctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @saa5249_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @saa5249_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.saa5249_device*, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.saa5249_device* @video_drvdata(%struct.file* %9)
  store %struct.saa5249_device* %10, %struct.saa5249_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @vtx_fix_command(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.saa5249_device*, %struct.saa5249_device** %7, align 8
  %14 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @do_saa5249_ioctl, align 4
  %20 = call i64 @video_usercopy(%struct.file* %16, i32 %17, i64 %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.saa5249_device*, %struct.saa5249_device** %7, align 8
  %22 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i64, i64* %8, align 8
  ret i64 %24
}

declare dso_local %struct.saa5249_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vtx_fix_command(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_usercopy(%struct.file*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
