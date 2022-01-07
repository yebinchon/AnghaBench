; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_device_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_device_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i32, i32, i32 }
%union.dst_gpio_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt878_device_control(%struct.bt878* %0, i32 %1, %union.dst_gpio_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt878*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.dst_gpio_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.bt878* %0, %struct.bt878** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.dst_gpio_packet* %2, %union.dst_gpio_packet** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.bt878*, %struct.bt878** %5, align 8
  %10 = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %58 [
    i32 131, label %18
    i32 128, label %31
    i32 130, label %44
    i32 129, label %52
  ]

18:                                               ; preds = %16
  %19 = load %struct.bt878*, %struct.bt878** %5, align 8
  %20 = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %23 = bitcast %union.dst_gpio_packet* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %27 = bitcast %union.dst_gpio_packet* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bttv_gpio_enable(i32 %21, i32 %25, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %61

31:                                               ; preds = %16
  %32 = load %struct.bt878*, %struct.bt878** %5, align 8
  %33 = getelementptr inbounds %struct.bt878, %struct.bt878* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %36 = bitcast %union.dst_gpio_packet* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %40 = bitcast %union.dst_gpio_packet* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bttv_write_gpio(i32 %34, i32 %38, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %61

44:                                               ; preds = %16
  %45 = load %struct.bt878*, %struct.bt878** %5, align 8
  %46 = getelementptr inbounds %struct.bt878, %struct.bt878* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %49 = bitcast %union.dst_gpio_packet* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @bttv_read_gpio(i32 %47, i32* %50)
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %16
  %53 = load %union.dst_gpio_packet*, %union.dst_gpio_packet** %7, align 8
  %54 = bitcast %union.dst_gpio_packet* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bt878*, %struct.bt878** %5, align 8
  %57 = getelementptr inbounds %struct.bt878, %struct.bt878* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %16
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %52, %44, %31, %18
  %62 = load %struct.bt878*, %struct.bt878** %5, align 8
  %63 = getelementptr inbounds %struct.bt878, %struct.bt878* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @bttv_gpio_enable(i32, i32, i32) #1

declare dso_local i32 @bttv_write_gpio(i32, i32, i32) #1

declare dso_local i32 @bttv_read_gpio(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
