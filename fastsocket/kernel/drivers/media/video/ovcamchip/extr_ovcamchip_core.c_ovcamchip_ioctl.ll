; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ovcamchip = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*)*, i64 (%struct.i2c_client*, i32, i8*)* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Camera chip not initialized yet!\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@mono = common dso_local global i32 0, align 4
@CC_OV7620 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Monochrome not implemented for this chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Initializing chip as monochrome\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @ovcamchip_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovcamchip_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ovcamchip*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.ovcamchip* @to_ovcamchip(%struct.v4l2_subdev* %11)
  store %struct.ovcamchip* %12, %struct.ovcamchip** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %16 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 128
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 129
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %27 = call i32 @v4l2_err(%struct.v4l2_subdev* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @EPERM, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %95

30:                                               ; preds = %22, %19, %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %85 [
    i32 128, label %32
    i32 129, label %38
  ]

32:                                               ; preds = %30
  %33 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %34 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 4
  store i64 0, i64* %4, align 8
  br label %95

38:                                               ; preds = %30
  %39 = load i32, i32* @mono, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %46 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @mono, align 4
  %49 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %50 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %53 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %58 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CC_OV7620, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %64 = call i32 @v4l2_warn(%struct.v4l2_subdev* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %68

65:                                               ; preds = %56
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %67 = call i32 @v4l2_info(%struct.v4l2_subdev* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %71 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %73, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %76 = call i32 %74(%struct.i2c_client* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %4, align 8
  br label %95

82:                                               ; preds = %69
  %83 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %84 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  store i64 0, i64* %4, align 8
  br label %95

85:                                               ; preds = %30
  %86 = load %struct.ovcamchip*, %struct.ovcamchip** %8, align 8
  %87 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64 (%struct.i2c_client*, i32, i8*)*, i64 (%struct.i2c_client*, i32, i8*)** %89, align 8
  %91 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i64 %90(%struct.i2c_client* %91, i32 %92, i8* %93)
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %85, %82, %79, %32, %25
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local %struct.ovcamchip* @to_ovcamchip(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
