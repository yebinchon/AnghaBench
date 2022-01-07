; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa6588.c_saa6588_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa6588.c_saa6588_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa6588 = type { i32, i32 }
%struct.saa6588_command = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @saa6588_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @saa6588_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.saa6588*, align 8
  %9 = alloca %struct.saa6588_command*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %10)
  store %struct.saa6588* %11, %struct.saa6588** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.saa6588_command*
  store %struct.saa6588_command* %13, %struct.saa6588_command** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %55 [
    i32 130, label %15
    i32 131, label %18
    i32 128, label %26
    i32 129, label %30
  ]

15:                                               ; preds = %3
  %16 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %17 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %20 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %22 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %21, i32 0, i32 1
  %23 = call i32 @wake_up_interruptible(i32* %22)
  %24 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %25 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %28 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %29 = call i32 @read_from_buf(%struct.saa6588* %27, %struct.saa6588_command* %28)
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %32 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %34 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %42 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %47 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %50 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %49, i32 0, i32 1
  %51 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %52 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @poll_wait(i32 %48, i32* %50, i32 %53)
  br label %58

55:                                               ; preds = %3
  %56 = load i64, i64* @ENOIOCTLCMD, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %4, align 8
  br label %59

58:                                               ; preds = %45, %26, %18, %15
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local %struct.saa6588* @to_saa6588(%struct.v4l2_subdev*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @read_from_buf(%struct.saa6588*, %struct.saa6588_command*) #1

declare dso_local i32 @poll_wait(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
