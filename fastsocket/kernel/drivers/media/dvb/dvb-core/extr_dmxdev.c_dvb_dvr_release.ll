; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dvr_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dvr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32*, %struct.dvb_device* }
%struct.dvb_device = type { i32, i32, i32, %struct.dmxdev* }
%struct.dmxdev = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*)* }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_dvr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dvr_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.dmxdev*, align 8
  %7 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 2
  %10 = load %struct.dvb_device*, %struct.dvb_device** %9, align 8
  store %struct.dvb_device* %10, %struct.dvb_device** %5, align 8
  %11 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %11, i32 0, i32 3
  %13 = load %struct.dmxdev*, %struct.dmxdev** %12, align 8
  store %struct.dmxdev* %13, %struct.dmxdev** %6, align 8
  %14 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %15 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @O_ACCMODE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %26 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %25, i32 0, i32 5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %28, align 8
  %30 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %31 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %30, i32 0, i32 5
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_5__* %32)
  %34 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %35 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %37, align 8
  %39 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %43 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(%struct.TYPE_5__* %41, i32 %44)
  br label %46

46:                                               ; preds = %24, %2
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @O_ACCMODE, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %60 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  %65 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %66 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %7, align 8
  %70 = call i32 (...) @mb()
  %71 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %72 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %71, i32 0, i32 2
  %73 = call i32 @spin_lock_irq(i32* %72)
  %74 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %75 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %78 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @vfree(i8* %80)
  br label %82

82:                                               ; preds = %64, %54
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %85 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %110

92:                                               ; preds = %83
  %93 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %94 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.file*, %struct.file** %4, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @fops_put(i32* %100)
  %102 = load %struct.file*, %struct.file** %4, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %105 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %108 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %107, i32 0, i32 1
  %109 = call i32 @wake_up(i32* %108)
  br label %114

110:                                              ; preds = %92, %83
  %111 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %112 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %97
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @fops_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
