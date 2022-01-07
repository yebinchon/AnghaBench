; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mousedev_client* }
%struct.mousedev_client = type { i64, i64, %struct.mousedev* }
%struct.mousedev = type { i64, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @mousedev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousedev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mousedev_client*, align 8
  %6 = alloca %struct.mousedev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.mousedev_client*, %struct.mousedev_client** %8, align 8
  store %struct.mousedev_client* %9, %struct.mousedev_client** %5, align 8
  %10 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %11 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %10, i32 0, i32 2
  %12 = load %struct.mousedev*, %struct.mousedev** %11, align 8
  store %struct.mousedev* %12, %struct.mousedev** %6, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %15 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %14, i32 0, i32 1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %19 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %24 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  %34 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %35 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @POLLHUP, align 4
  %41 = load i32, i32* @POLLERR, align 4
  %42 = or i32 %40, %41
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %39 ]
  %45 = or i32 %33, %44
  ret i32 %45
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
