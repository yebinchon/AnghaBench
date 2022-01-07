; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_resubmit_int_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_resubmit_int_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't resubmit intr, %s-%s, status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaweth_device*, i32)* @kaweth_resubmit_int_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_resubmit_int_urb(%struct.kaweth_device* %0, i32 %1) #0 {
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %7 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @usb_submit_urb(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %20 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %22 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %21, i32 0, i32 2
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 4
  %25 = call i32 @schedule_delayed_work(i32* %22, i32 %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %28 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %34 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %41 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
