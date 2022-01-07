; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-dvb.c_attach_xc3028.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-dvb.c_attach_xc3028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dvb_frontend = type { i32 }
%struct.xc2028_config = type { i32, i32* }

@.str = private unnamed_addr constant [52 x i8] c"/2: dvb frontend not attached. Can't attach xc3028\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@xc2028_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"/2: xc3028 attach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s/2: xc3028 attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.em28xx*)* @attach_xc3028 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_xc3028(i32 %0, %struct.em28xx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.xc2028_config, align 8
  store i32 %0, i32* %4, align 4
  store %struct.em28xx* %1, %struct.em28xx** %5, align 8
  %8 = call i32 @memset(%struct.xc2028_config* %7, i32 0, i32 16)
  %9 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.xc2028_config, %struct.xc2028_config* %7, i32 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.xc2028_config, %struct.xc2028_config* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* @xc2028_attach, align 4
  %26 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.dvb_frontend* @dvb_attach(i32 %25, i32* %30, %struct.xc2028_config* %7)
  store %struct.dvb_frontend* %31, %struct.dvb_frontend** %6, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %33 = icmp ne %struct.dvb_frontend* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %24
  %35 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %37 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dvb_frontend_detach(i32* %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %24
  %49 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @em28xx_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %34, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.xc2028_config*, i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32*, %struct.xc2028_config*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @em28xx_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
