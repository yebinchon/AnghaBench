; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_dvb_bulk_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_dvb_bulk_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @dvb_bulk_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_bulk_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %6 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %7 = icmp ne %struct.cx231xx* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

9:                                                ; preds = %2
  %10 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DEV_DISCONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %9
  store i32 0, i32* %3, align 4
  br label %55

24:                                               ; preds = %16
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @print_err_status(%struct.cx231xx* %30, i32 -1, i32 %33)
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dvb_dmx_swfilter(i32* %47, i32 %50, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %43, %41, %23, %8
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
