; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, i32 }
%struct.dmxdev_filter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@DMXDEV_STATE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*)* @dvb_dmxdev_filter_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_filter_free(%struct.dmxdev* %0, %struct.dmxdev_filter* %1) #0 {
  %3 = alloca %struct.dmxdev*, align 8
  %4 = alloca %struct.dmxdev_filter*, align 8
  %5 = alloca i8*, align 8
  store %struct.dmxdev* %0, %struct.dmxdev** %3, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %4, align 8
  %6 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %7 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %10 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %13 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %12)
  %14 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %15 = call i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter* %14)
  %16 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %17 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %23 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  store i8* %26, i8** %5, align 8
  %27 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %28 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %34 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @vfree(i8* %36)
  br label %38

38:                                               ; preds = %21, %2
  %39 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %40 = load i32, i32* @DMXDEV_STATE_FREE, align 4
  %41 = call i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter* %39, i32 %40)
  %42 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %43 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @wake_up(i32* %44)
  %46 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %47 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %50 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
