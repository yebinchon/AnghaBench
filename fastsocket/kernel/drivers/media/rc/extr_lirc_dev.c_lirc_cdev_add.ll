; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_lirc_dev.c_lirc_cdev_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_lirc_dev.c_lirc_cdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, i32 }
%struct.irctl = type { %struct.lirc_driver }
%struct.lirc_driver = type { i64, i32, i32* }

@cdevs = common dso_local global %struct.cdev* null, align 8
@lirc_dev_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lirc%d\00", align 1
@lirc_base_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irctl*)* @lirc_cdev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lirc_cdev_add(%struct.irctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lirc_driver*, align 8
  %6 = alloca %struct.cdev*, align 8
  store %struct.irctl* %0, %struct.irctl** %3, align 8
  %7 = load %struct.irctl*, %struct.irctl** %3, align 8
  %8 = getelementptr inbounds %struct.irctl, %struct.irctl* %7, i32 0, i32 0
  store %struct.lirc_driver* %8, %struct.lirc_driver** %5, align 8
  %9 = load %struct.cdev*, %struct.cdev** @cdevs, align 8
  %10 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %11 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i64 %12
  store %struct.cdev* %13, %struct.cdev** %6, align 8
  %14 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %15 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.cdev*, %struct.cdev** %6, align 8
  %20 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %21 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @cdev_init(%struct.cdev* %19, i32* %22)
  %24 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %25 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cdev*, %struct.cdev** %6, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.cdev*, %struct.cdev** %6, align 8
  %31 = call i32 @cdev_init(%struct.cdev* %30, i32* @lirc_dev_fops)
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = load %struct.cdev*, %struct.cdev** %6, align 8
  %34 = getelementptr inbounds %struct.cdev, %struct.cdev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.cdev*, %struct.cdev** %6, align 8
  %37 = getelementptr inbounds %struct.cdev, %struct.cdev* %36, i32 0, i32 0
  %38 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %39 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @kobject_set_name(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %35
  %47 = load %struct.cdev*, %struct.cdev** %6, align 8
  %48 = load i32, i32* @lirc_base_dev, align 4
  %49 = call i32 @MAJOR(i32 %48)
  %50 = load %struct.lirc_driver*, %struct.lirc_driver** %5, align 8
  %51 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @MKDEV(i32 %49, i64 %52)
  %54 = call i32 @cdev_add(%struct.cdev* %47, i32 %53, i32 1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.cdev*, %struct.cdev** %6, align 8
  %59 = getelementptr inbounds %struct.cdev, %struct.cdev* %58, i32 0, i32 0
  %60 = call i32 @kobject_put(i32* %59)
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %44
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @cdev_init(%struct.cdev*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i64) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
