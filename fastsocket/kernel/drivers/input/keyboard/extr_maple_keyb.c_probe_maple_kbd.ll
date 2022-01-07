; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_maple_keyb.c_probe_maple_kbd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_maple_keyb.c_probe_maple_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { %struct.maple_driver*, i32, i32 }
%struct.maple_driver = type { i32 }
%struct.dc_kbd = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dc_kbd_keycode = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@NR_SCANCODES = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@dc_kbd_callback = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MAPLE_FUNC_KEYBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @probe_maple_kbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_maple_kbd(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.maple_device*, align 8
  %5 = alloca %struct.maple_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_kbd*, align 8
  %9 = alloca %struct.input_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.maple_device* @to_maple_dev(%struct.device* %10)
  store %struct.maple_device* %11, %struct.maple_device** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.maple_driver* @to_maple_driver(i32 %14)
  store %struct.maple_driver* %15, %struct.maple_driver** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dc_kbd* @kzalloc(i32 16, i32 %16)
  store %struct.dc_kbd* %17, %struct.dc_kbd** %8, align 8
  %18 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %19 = icmp ne %struct.dc_kbd* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %132

23:                                               ; preds = %1
  %24 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %24, %struct.input_dev** %9, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %26 = icmp ne %struct.input_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %129

30:                                               ; preds = %23
  %31 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %32 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %33 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %32, i32 0, i32 1
  store %struct.input_dev* %31, %struct.input_dev** %33, align 8
  %34 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %35 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** @dc_kbd_keycode, align 8
  %38 = call i32 @memcpy(i32 %36, i32* %37, i32 4)
  %39 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %40 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* @EV_REP, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = or i32 %45, %47
  %49 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %54 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 1
  store i32 2, i32* %59, align 8
  %60 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %61 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @BUS_HOST, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %71 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %70, i32 0, i32 1
  %72 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %89, %30
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @NR_SCANCODES, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i32*, i32** @dc_kbd_keycode, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load i32, i32* @KEY_RESERVED, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__clear_bit(i32 %93, i32 %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %99 = load i32, i32* @EV_MSC, align 4
  %100 = load i32, i32* @MSC_SCAN, align 4
  %101 = call i32 @input_set_capability(%struct.input_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %103 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %104 = call i32 @input_set_drvdata(%struct.input_dev* %102, %struct.dc_kbd* %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %106 = call i32 @input_register_device(%struct.input_dev* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %124

110:                                              ; preds = %92
  %111 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %112 = load i32, i32* @dc_kbd_callback, align 4
  %113 = load i32, i32* @HZ, align 4
  %114 = sdiv i32 %113, 50
  %115 = load i32, i32* @MAPLE_FUNC_KEYBOARD, align 4
  %116 = call i32 @maple_getcond_callback(%struct.maple_device* %111, i32 %112, i32 %114, i32 %115)
  %117 = load %struct.maple_driver*, %struct.maple_driver** %5, align 8
  %118 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %119 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %118, i32 0, i32 0
  store %struct.maple_driver* %117, %struct.maple_driver** %119, align 8
  %120 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %121 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %122 = call i32 @maple_set_drvdata(%struct.maple_device* %120, %struct.dc_kbd* %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %134

124:                                              ; preds = %109
  %125 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %126 = call i32 @maple_set_drvdata(%struct.maple_device* %125, %struct.dc_kbd* null)
  %127 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %128 = call i32 @input_free_device(%struct.input_dev* %127)
  br label %129

129:                                              ; preds = %124, %27
  %130 = load %struct.dc_kbd*, %struct.dc_kbd** %8, align 8
  %131 = call i32 @kfree(%struct.dc_kbd* %130)
  br label %132

132:                                              ; preds = %129, %20
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %110
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local %struct.maple_driver* @to_maple_driver(i32) #1

declare dso_local %struct.dc_kbd* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.dc_kbd*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @maple_getcond_callback(%struct.maple_device*, i32, i32, i32) #1

declare dso_local i32 @maple_set_drvdata(%struct.maple_device*, %struct.dc_kbd*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.dc_kbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
