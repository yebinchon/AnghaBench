; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubdev_info = type { i32 }
%struct.cx_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.hubdev_info* }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cx_dev= 0x%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tiocx_bus_type = common dso_local global i32 0, align 4
@tiocx_bus_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@dev_attr_cxdev_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_device_register(i32 %0, i32 %1, i32 %2, %struct.hubdev_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hubdev_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cx_dev*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hubdev_info* %3, %struct.hubdev_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cx_dev* @kzalloc(i32 56, i32 %13)
  store %struct.cx_dev* %14, %struct.cx_dev** %12, align 8
  %15 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %16 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.cx_dev* %15)
  %17 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %18 = icmp eq %struct.cx_dev* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %67

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %25 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %29 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %33 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.hubdev_info*, %struct.hubdev_info** %10, align 8
  %36 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %37 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %36, i32 0, i32 3
  store %struct.hubdev_info* %35, %struct.hubdev_info** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %40 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %42 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %45 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32* @tiocx_bus_type, i32** %46, align 8
  %47 = load i32, i32* @tiocx_bus_release, align 4
  %48 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %49 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %52 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %51, i32 0, i32 1
  %53 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %54 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_set_name(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %59 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %58, i32 0, i32 1
  %60 = call i32 @device_register(%struct.TYPE_7__* %59)
  %61 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %62 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %61, i32 0, i32 1
  %63 = call i32 @get_device(%struct.TYPE_7__* %62)
  %64 = load %struct.cx_dev*, %struct.cx_dev** %12, align 8
  %65 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %64, i32 0, i32 1
  %66 = call i32 @device_create_file(%struct.TYPE_7__* %65, i32* @dev_attr_cxdev_control)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %22, %19
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.cx_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @DBG(i8*, %struct.cx_dev*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @get_device(%struct.TYPE_7__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
