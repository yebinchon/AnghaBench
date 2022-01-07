; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.sd = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_12__* }

@VV6410_DEVICEH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vv6410 sensor detected\00", align 1
@vv6410_ctrl = common dso_local global %struct.TYPE_12__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vv6410_mode = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @vv6410_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = load i32, i32* @VV6410_DEVICEH, align 4
  %10 = call i32 @stv06xx_read_sensor(%struct.sd* %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 25
  br i1 %18, label %19, label %80

19:                                               ; preds = %16
  %20 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_ctrl, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_mode, align 8
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_mode, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %39)
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_ctrl, align 8
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_ctrl, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %49)
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %73, %33
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vv6410_ctrl, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %54

76:                                               ; preds = %54
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.sd*, %struct.sd** %3, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  store i32 0, i32* %2, align 4
  br label %83

80:                                               ; preds = %16
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %76, %30, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @stv06xx_read_sensor(%struct.sd*, i32, i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
