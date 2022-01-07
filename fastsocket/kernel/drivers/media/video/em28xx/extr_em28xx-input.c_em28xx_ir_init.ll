; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i8*, %struct.em28xx_IR*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.em28xx_IR = type { i32, i32, i32, %struct.rc_dev*, %struct.em28xx* }
%struct.rc_dev = type { i32, i32 (%struct.rc_dev*, i32)*, i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.em28xx_IR* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_TYPE_RC5 = common dso_local global i32 0, align 4
@RC_TYPE_NEC = common dso_local global i32 0, align 4
@em28xx_ir_start = common dso_local global i32 0, align 4
@em28xx_ir_stop = common dso_local global i32 0, align 4
@RC_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"em28xx IR (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@BUS_USB = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_ir_init(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_IR*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.em28xx_IR* @kzalloc(i32 32, i32 %16)
  store %struct.em28xx_IR* %17, %struct.em28xx_IR** %4, align 8
  %18 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %18, %struct.rc_dev** %5, align 8
  %19 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %20 = icmp ne %struct.em28xx_IR* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %23 = icmp ne %struct.rc_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %15
  br label %140

25:                                               ; preds = %21
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %28 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %27, i32 0, i32 4
  store %struct.em28xx* %26, %struct.em28xx** %28, align 8
  %29 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 1
  store %struct.em28xx_IR* %29, %struct.em28xx_IR** %31, align 8
  %32 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %33 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %34 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %33, i32 0, i32 3
  store %struct.rc_dev* %32, %struct.rc_dev** %34, align 8
  %35 = load i32, i32* @RC_TYPE_RC5, align 4
  %36 = load i32, i32* @RC_TYPE_NEC, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %41 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 10
  store %struct.em28xx_IR* %40, %struct.em28xx_IR** %42, align 8
  %43 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 1
  store i32 (%struct.rc_dev*, i32)* @em28xx_ir_change_protocol, i32 (%struct.rc_dev*, i32)** %44, align 8
  %45 = load i32, i32* @em28xx_ir_start, align 4
  %46 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @em28xx_ir_stop, align 4
  %49 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %52 = load i32, i32* @RC_TYPE_UNKNOWN, align 4
  %53 = call i32 @em28xx_ir_change_protocol(%struct.rc_dev* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  br label %140

57:                                               ; preds = %25
  %58 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %59 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %58, i32 0, i32 0
  store i32 100, i32* %59, align 8
  %60 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %61 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i32 %62, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %71 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_make_path(%struct.TYPE_10__* %69, i32 %72, i32 4)
  %74 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %75 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strlcat(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %78 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %79 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %82 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %84 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %87 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @BUS_USB, align 4
  %89 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %90 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %93 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %103 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %106 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %105, i32 0, i32 3
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le16_to_cpu(i32 %110)
  %112 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %113 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %116 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32* %118, i32** %121, align 8
  %122 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %123 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load i32, i32* @MODULE_NAME, align 4
  %129 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %130 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %132 = call i32 @rc_register_device(%struct.rc_dev* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %57
  br label %137

136:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %146

137:                                              ; preds = %135
  %138 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %139 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %138, i32 0, i32 1
  store %struct.em28xx_IR* null, %struct.em28xx_IR** %139, align 8
  br label %140

140:                                              ; preds = %137, %56, %24
  %141 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %142 = call i32 @rc_free_device(%struct.rc_dev* %141)
  %143 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %144 = call i32 @kfree(%struct.em28xx_IR* %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %140, %136, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.em28xx_IR* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @em28xx_ir_change_protocol(%struct.rc_dev*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.em28xx_IR*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
