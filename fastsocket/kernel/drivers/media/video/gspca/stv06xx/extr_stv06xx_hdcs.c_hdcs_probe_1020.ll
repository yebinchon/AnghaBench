; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1020.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.hdcs*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.hdcs = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@HDCS_IDENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HDCS-1020 sensor detected\00", align 1
@hdcs1020_mode = common dso_local global i8* null, align 8
@hdcs1020_ctrl = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDCS_1020_DEF_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @hdcs_probe_1020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_probe_1020(%struct.sd* %0) #0 {
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
  %14 = icmp ne i32 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %81

18:                                               ; preds = %12
  %19 = call i32 @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** @hdcs1020_mode, align 8
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** @hdcs1020_mode, align 8
  %26 = call i8* @ARRAY_SIZE(i8* %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @hdcs1020_ctrl, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @hdcs1020_ctrl, align 8
  %36 = call i8* @ARRAY_SIZE(i8* %35)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
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
  br label %81

47:                                               ; preds = %18
  %48 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %49 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 24, i32* %50, align 4
  %51 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %52 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i32 4, i32* %53, align 4
  %54 = load i32, i32* @HDCS_1020_DEF_WIDTH, align 4
  %55 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %56 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %59 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i32 304, i32* %60, align 4
  %61 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %62 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i32 4, i32* %63, align 4
  %64 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %65 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %64, i32 0, i32 0
  store i32 6, i32* %65, align 4
  %66 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %67 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 3, i32* %68, align 4
  %69 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %70 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 3, i32* %71, align 4
  %72 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %73 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i32 155, i32* %74, align 4
  %75 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %76 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i32 96, i32* %77, align 4
  %78 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 0
  store %struct.hdcs* %78, %struct.hdcs** %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %47, %44, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
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
