; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_dmxdev_release(%struct.dmxdev* %0) #0 {
  %2 = alloca %struct.dmxdev*, align 8
  store %struct.dmxdev* %0, %struct.dmxdev** %2, align 8
  %3 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %4 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %6 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %13 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %18 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event(i32 %16, i32 %23)
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %27 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %34 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %39 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @wait_event(i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %32, %25
  %47 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %48 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @dvb_unregister_device(%struct.TYPE_4__* %49)
  %51 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %52 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @dvb_unregister_device(%struct.TYPE_4__* %53)
  %55 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %56 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @vfree(i32* %57)
  %59 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %60 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %62 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %64, align 8
  %66 = load %struct.dmxdev*, %struct.dmxdev** %2, align 8
  %67 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 %65(%struct.TYPE_3__* %68)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dvb_unregister_device(%struct.TYPE_4__*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
