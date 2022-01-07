; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_newtonkbd.c_nkbd_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_newtonkbd.c_nkbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.nkbd = type { %struct.input_dev*, i32*, i32, %struct.serio* }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@nkbd_keycode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Newton Keyboard\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_NEWTON = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @nkbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nkbd_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.nkbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nkbd* @kzalloc(i32 32, i32 %12)
  store %struct.nkbd* %13, %struct.nkbd** %6, align 8
  %14 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %14, %struct.input_dev** %7, align 8
  %15 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %16 = icmp ne %struct.nkbd* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %19 = icmp ne %struct.input_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %133

21:                                               ; preds = %17
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %24 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %23, i32 0, i32 3
  store %struct.serio* %22, %struct.serio** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %27 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %26, i32 0, i32 0
  store %struct.input_dev* %25, %struct.input_dev** %27, align 8
  %28 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %29 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.serio*, %struct.serio** %4, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %36 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @nkbd_keycode, align 4
  %39 = call i32 @memcpy(i32* %37, i32 %38, i32 8)
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %43 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @BUS_RS232, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @SERIO_NEWTON, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 256, i32* %60, align 4
  %61 = load %struct.serio*, %struct.serio** %4, align 8
  %62 = getelementptr inbounds %struct.serio, %struct.serio* %61, i32 0, i32 1
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* @EV_KEY, align 4
  %67 = call i32 @BIT_MASK(i32 %66)
  %68 = load i32, i32* @EV_REP, align 4
  %69 = call i32 @BIT_MASK(i32 %68)
  %70 = or i32 %67, %69
  %71 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %76 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @nkbd_keycode, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %101, %21
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 128
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %91 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @set_bit(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clear_bit(i32 0, i32 %107)
  %109 = load %struct.serio*, %struct.serio** %4, align 8
  %110 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %111 = call i32 @serio_set_drvdata(%struct.serio* %109, %struct.nkbd* %110)
  %112 = load %struct.serio*, %struct.serio** %4, align 8
  %113 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %114 = call i32 @serio_open(%struct.serio* %112, %struct.serio_driver* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %130

118:                                              ; preds = %104
  %119 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %120 = getelementptr inbounds %struct.nkbd, %struct.nkbd* %119, i32 0, i32 0
  %121 = load %struct.input_dev*, %struct.input_dev** %120, align 8
  %122 = call i32 @input_register_device(%struct.input_dev* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %127

126:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %139

127:                                              ; preds = %125
  %128 = load %struct.serio*, %struct.serio** %4, align 8
  %129 = call i32 @serio_close(%struct.serio* %128)
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.serio*, %struct.serio** %4, align 8
  %132 = call i32 @serio_set_drvdata(%struct.serio* %131, %struct.nkbd* null)
  br label %133

133:                                              ; preds = %130, %20
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = call i32 @input_free_device(%struct.input_dev* %134)
  %136 = load %struct.nkbd*, %struct.nkbd** %6, align 8
  %137 = call i32 @kfree(%struct.nkbd* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %126
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.nkbd* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.nkbd*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.nkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
