; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1x00.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1x00.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, %struct.hdcs*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.hdcs = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@HDCS_IDENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"HDCS-1000/1100 sensor detected\00", align 1
@hdcs1x00_mode = common dso_local global i8* null, align 8
@hdcs1x00_ctrl = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDCS_1X00_DEF_WIDTH = common dso_local global i32 0, align 4
@HDCS_1X00_DEF_HEIGHT = common dso_local global i32 0, align 4
@BRIDGE_STV602 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @hdcs_probe_1x00 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_probe_1x00(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.hdcs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = load i32, i32* @HDCS_IDENT, align 4
  %9 = call i32 @stv06xx_read_sensor(%struct.sd* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %89

18:                                               ; preds = %12
  %19 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** @hdcs1x00_mode, align 8
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** @hdcs1x00_mode, align 8
  %26 = call i8* @ARRAY_SIZE(i8* %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @hdcs1x00_ctrl, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @hdcs1x00_ctrl, align 8
  %36 = call i8* @ARRAY_SIZE(i8* %35)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.hdcs* @kmalloc(i32 40, i32 %40)
  store %struct.hdcs* %41, %struct.hdcs** %4, align 8
  %42 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %43 = icmp ne %struct.hdcs* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %18
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %18
  %48 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %49 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 8, i32* %50, align 4
  %51 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %52 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i32 8, i32* %53, align 4
  %54 = load i32, i32* @HDCS_1X00_DEF_WIDTH, align 4
  %55 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %56 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @HDCS_1X00_DEF_HEIGHT, align 4
  %59 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %60 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %63 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32 4, i32* %64, align 4
  %65 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %66 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 4, i32* %67, align 4
  %68 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %69 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 2, i32* %70, align 4
  %71 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %72 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32 186, i32* %73, align 4
  %74 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %75 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 100, i32* %76, align 4
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BRIDGE_STV602, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 20, i32 5
  %84 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %85 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  store %struct.hdcs* %86, %struct.hdcs** %88, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %47, %44, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @stv06xx_read_sensor(%struct.sd*, i32, i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.hdcs* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
