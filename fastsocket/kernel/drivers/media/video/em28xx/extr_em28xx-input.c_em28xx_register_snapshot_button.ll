; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_register_snapshot_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_register_snapshot_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.input_dev*, %struct.TYPE_8__*, i32 }
%struct.input_dev = type { i8*, i32*, %struct.TYPE_7__, %struct.TYPE_6__, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Registering snapshot button...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"input_allocate_device failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/sbutton\00", align 1
@em28xx_query_sbutton = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"em28xx snapshot button\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EM28XX_SNAPSHOT_KEY = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"input_register_device failed\0A\00", align 1
@EM28XX_SBUTTON_QUERY_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_register_snapshot_button(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = call i32 @em28xx_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %103

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_make_path(%struct.TYPE_8__* %14, i32 %17, i32 4)
  %19 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlcat(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = load i32, i32* @em28xx_query_sbutton, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @EV_KEY, align 4
  %35 = call i32 @BIT_MASK(i32 %34)
  %36 = load i32, i32* @EV_REP, align 4
  %37 = call i32 @BIT_MASK(i32 %36)
  %38 = or i32 %35, %37
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @EM28XX_SNAPSHOT_KEY, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @set_bit(i32 %43, i32 %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @BUS_USB, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32* %82, i32** %85, align 8
  %86 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %87 = call i32 @input_register_device(%struct.input_dev* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %11
  %91 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %93 = call i32 @input_free_device(%struct.input_dev* %92)
  br label %103

94:                                               ; preds = %11
  %95 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %96 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %97 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %96, i32 0, i32 1
  store %struct.input_dev* %95, %struct.input_dev** %97, align 8
  %98 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %99 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %98, i32 0, i32 0
  %100 = load i32, i32* @EM28XX_SBUTTON_QUERY_INTERVAL, align 4
  %101 = call i32 @msecs_to_jiffies(i32 %100)
  %102 = call i32 @schedule_delayed_work(i32* %99, i32 %101)
  br label %103

103:                                              ; preds = %94, %90, %9
  ret void
}

declare dso_local i32 @em28xx_info(i8*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
