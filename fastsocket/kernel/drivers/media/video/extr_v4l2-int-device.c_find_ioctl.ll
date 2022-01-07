; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-int-device.c_find_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-int-device.c_find_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_slave = type { i32, %struct.v4l2_int_ioctl_desc* }
%struct.v4l2_int_ioctl_desc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.v4l2_int_slave*, i32, i32*)* @find_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_ioctl(%struct.v4l2_int_slave* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_int_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.v4l2_int_ioctl_desc*, align 8
  %9 = alloca %struct.v4l2_int_ioctl_desc*, align 8
  %10 = alloca %struct.v4l2_int_ioctl_desc*, align 8
  store %struct.v4l2_int_slave* %0, %struct.v4l2_int_slave** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.v4l2_int_slave*, %struct.v4l2_int_slave** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_int_slave, %struct.v4l2_int_slave* %11, i32 0, i32 1
  %13 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %12, align 8
  store %struct.v4l2_int_ioctl_desc* %13, %struct.v4l2_int_ioctl_desc** %8, align 8
  %14 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %8, align 8
  %15 = load %struct.v4l2_int_slave*, %struct.v4l2_int_slave** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_int_slave, %struct.v4l2_int_slave* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %14, i64 %18
  %20 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %19, i64 -1
  store %struct.v4l2_int_ioctl_desc* %20, %struct.v4l2_int_ioctl_desc** %9, align 8
  br label %21

21:                                               ; preds = %57, %3
  %22 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %8, align 8
  %23 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %9, align 8
  %24 = icmp ule %struct.v4l2_int_ioctl_desc* %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %9, align 8
  %27 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %8, align 8
  %28 = ptrtoint %struct.v4l2_int_ioctl_desc* %26 to i64
  %29 = ptrtoint %struct.v4l2_int_ioctl_desc* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 16
  %32 = sdiv i64 %31, 2
  %33 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %33, i64 %32
  store %struct.v4l2_int_ioctl_desc* %34, %struct.v4l2_int_ioctl_desc** %10, align 8
  %35 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %10, align 8
  %42 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %41, i64 1
  store %struct.v4l2_int_ioctl_desc* %42, %struct.v4l2_int_ioctl_desc** %8, align 8
  br label %57

43:                                               ; preds = %25
  %44 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %50, i64 -1
  store %struct.v4l2_int_ioctl_desc* %51, %struct.v4l2_int_ioctl_desc** %9, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.v4l2_int_ioctl_desc*, %struct.v4l2_int_ioctl_desc** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_int_ioctl_desc, %struct.v4l2_int_ioctl_desc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %4, align 8
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %40
  br label %21

58:                                               ; preds = %21
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
