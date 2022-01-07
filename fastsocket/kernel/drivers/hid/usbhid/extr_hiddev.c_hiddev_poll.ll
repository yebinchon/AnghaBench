; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hiddev_list* }
%struct.hiddev_list = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @hiddev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiddev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hiddev_list*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.hiddev_list*, %struct.hiddev_list** %8, align 8
  store %struct.hiddev_list* %9, %struct.hiddev_list** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %12 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @poll_wait(%struct.file* %10, i32* %14, i32* %15)
  %17 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %18 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %21 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @POLLIN, align 4
  %26 = load i32, i32* @POLLRDNORM, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %30 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @POLLERR, align 4
  %37 = load i32, i32* @POLLHUP, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
