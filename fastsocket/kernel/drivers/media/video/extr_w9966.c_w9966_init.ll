; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i64, i32, i32, i32, %struct.parport*, i32, i32*, i8*, i64 }
%struct.parport = type { i32, i32 }

@parmode = common dso_local global i32 0, align 4
@PARPORT_MODE_ECP = common dso_local global i32 0, align 4
@IEEE1284_MODE_ECP = common dso_local global i8* null, align 8
@PARPORT_MODE_EPP = common dso_local global i32 0, align 4
@IEEE1284_MODE_EPP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"w9966\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"parport_register_device() failed\0A\00", align 1
@W9966_STATE_PDEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"w9966_setup() failed.\0A\00", align 1
@w9966_template = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32 0, align 4
@W9966_STATE_VDEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"w9966cf: Found and initialized a webcam on %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, %struct.parport*)* @w9966_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_init(%struct.w9966_dev* %0, %struct.parport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w9966_dev*, align 8
  %5 = alloca %struct.parport*, align 8
  store %struct.w9966_dev* %0, %struct.w9966_dev** %4, align 8
  store %struct.parport* %1, %struct.parport** %5, align 8
  %6 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %7 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

11:                                               ; preds = %2
  %12 = load %struct.parport*, %struct.parport** %5, align 8
  %13 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %14 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %13, i32 0, i32 4
  store %struct.parport* %12, %struct.parport** %14, align 8
  %15 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %16 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %15, i32 0, i32 1
  store i32 128, i32* %16, align 8
  %17 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %18 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %17, i32 0, i32 2
  store i32 64, i32* %18, align 4
  %19 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %20 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %19, i32 0, i32 3
  store i32 64, i32* %20, align 8
  %21 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %22 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @parmode, align 4
  switch i32 %23, label %24 [
    i32 0, label %25
    i32 1, label %53
    i32 2, label %57
  ]

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %11, %24
  %26 = load %struct.parport*, %struct.parport** %5, align 8
  %27 = getelementptr inbounds %struct.parport, %struct.parport* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PARPORT_MODE_ECP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** @IEEE1284_MODE_ECP, align 8
  %34 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %35 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  br label %52

36:                                               ; preds = %25
  %37 = load %struct.parport*, %struct.parport** %5, align 8
  %38 = getelementptr inbounds %struct.parport, %struct.parport* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PARPORT_MODE_EPP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i8*, i8** @IEEE1284_MODE_EPP, align 8
  %45 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %46 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %36
  %48 = load i8*, i8** @IEEE1284_MODE_ECP, align 8
  %49 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %50 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %32
  br label %61

53:                                               ; preds = %11
  %54 = load i8*, i8** @IEEE1284_MODE_ECP, align 8
  %55 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %56 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %11
  %58 = load i8*, i8** @IEEE1284_MODE_EPP, align 8
  %59 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %60 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %53, %52
  %62 = load %struct.parport*, %struct.parport** %5, align 8
  %63 = call i32* @parport_register_device(%struct.parport* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32* null)
  %64 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %65 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %64, i32 0, i32 6
  store i32* %63, i32** %65, align 8
  %66 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %67 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

72:                                               ; preds = %61
  %73 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %74 = load i32, i32* @W9966_STATE_PDEV, align 4
  %75 = load i32, i32* @W9966_STATE_PDEV, align 4
  %76 = call i32 @w9966_setState(%struct.w9966_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %78 = call i32 @w9966_pdev_claim(%struct.w9966_dev* %77)
  %79 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %80 = call i64 @w9966_setup(%struct.w9966_dev* %79, i32 0, i32 0, i32 1023, i32 1023, i32 200, i32 160)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

84:                                               ; preds = %72
  %85 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %86 = call i32 @w9966_pdev_release(%struct.w9966_dev* %85)
  %87 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %88 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %87, i32 0, i32 5
  %89 = call i32 @memcpy(i32* %88, i32* @w9966_template, i32 4)
  %90 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %91 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %90, i32 0, i32 5
  %92 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %93 = call i32 @video_set_drvdata(i32* %91, %struct.w9966_dev* %92)
  %94 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %95 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %94, i32 0, i32 5
  %96 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %97 = load i32, i32* @video_nr, align 4
  %98 = call i64 @video_register_device(i32* %95, i32 %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %112

101:                                              ; preds = %84
  %102 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %103 = load i32, i32* @W9966_STATE_VDEV, align 4
  %104 = load i32, i32* @W9966_STATE_VDEV, align 4
  %105 = call i32 @w9966_setState(%struct.w9966_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %107 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %106, i32 0, i32 4
  %108 = load %struct.parport*, %struct.parport** %107, align 8
  %109 = getelementptr inbounds %struct.parport, %struct.parport* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %101, %100, %82, %70, %10
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @parport_register_device(%struct.parport*, i8*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @w9966_setState(%struct.w9966_dev*, i32, i32) #1

declare dso_local i32 @w9966_pdev_claim(%struct.w9966_dev*) #1

declare dso_local i64 @w9966_setup(%struct.w9966_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @w9966_pdev_release(%struct.w9966_dev*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @video_set_drvdata(i32*, %struct.w9966_dev*) #1

declare dso_local i64 @video_register_device(i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
