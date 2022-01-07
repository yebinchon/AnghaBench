; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, %struct.st6422_settings*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.st6422_settings = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@BRIDGE_ST6422 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"st6422 sensor detected\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st6422_mode = common dso_local global i8* null, align 8
@st6422_ctrl = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @st6422_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st6422_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.st6422_settings*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BRIDGE_ST6422, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  %14 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.st6422_settings* @kmalloc(i32 4, i32 %15)
  store %struct.st6422_settings* %16, %struct.st6422_settings** %4, align 8
  %17 = load %struct.st6422_settings*, %struct.st6422_settings** %4, align 8
  %18 = icmp ne %struct.st6422_settings* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %13
  %23 = load i8*, i8** @st6422_mode, align 8
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @st6422_mode, align 8
  %29 = call i8* @ARRAY_SIZE(i8* %28)
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load %struct.st6422_settings*, %struct.st6422_settings** %4, align 8
  %35 = getelementptr inbounds %struct.st6422_settings, %struct.st6422_settings* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load i8*, i8** @st6422_ctrl, align 8
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** @st6422_ctrl, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.st6422_settings*, %struct.st6422_settings** %4, align 8
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  store %struct.st6422_settings* %50, %struct.st6422_settings** %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %22, %19, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @info(i8*) #1

declare dso_local %struct.st6422_settings* @kmalloc(i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
