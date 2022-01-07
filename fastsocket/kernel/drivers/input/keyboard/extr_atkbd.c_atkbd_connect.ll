; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.serio_driver = type { i32 }
%struct.atkbd = type { i32, i32, i32, i32, i32, %struct.input_dev*, i64, i32, i32, i32, i32 }
%struct.input_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@atkbd_event_work = common dso_local global i32 0, align 4
@atkbd_softraw = common dso_local global i32 0, align 4
@atkbd_softrepeat = common dso_local global i64 0, align 8
@atkbd_scroll = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@atkbd_set = common dso_local global i32 0, align 4
@atkbd_extra = common dso_local global i32 0, align 4
@atkbd_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @atkbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.atkbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.atkbd* @kzalloc(i32 56, i32 %11)
  store %struct.atkbd* %12, %struct.atkbd** %6, align 8
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  %14 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %15 = icmp ne %struct.atkbd* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %140

20:                                               ; preds = %16
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %23 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %22, i32 0, i32 5
  store %struct.input_dev* %21, %struct.input_dev** %23, align 8
  %24 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %25 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %24, i32 0, i32 10
  %26 = load %struct.serio*, %struct.serio** %4, align 8
  %27 = call i32 @ps2_init(i32* %25, %struct.serio* %26)
  %28 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %29 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %28, i32 0, i32 9
  %30 = load i32, i32* @atkbd_event_work, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %33 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %32, i32 0, i32 8
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.serio*, %struct.serio** %4, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %51 [
    i32 128, label %39
    i32 129, label %42
  ]

39:                                               ; preds = %20
  %40 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %41 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %20, %39
  %43 = load %struct.serio*, %struct.serio** %4, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %49 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %20, %50
  %52 = load i32, i32* @atkbd_softraw, align 4
  %53 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %54 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* @atkbd_softrepeat, align 8
  %56 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %57 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @atkbd_scroll, align 4
  %59 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %60 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %62 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %67 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %51
  %69 = load %struct.serio*, %struct.serio** %4, align 8
  %70 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %71 = call i32 @serio_set_drvdata(%struct.serio* %69, %struct.atkbd* %70)
  %72 = load %struct.serio*, %struct.serio** %4, align 8
  %73 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %74 = call i32 @serio_open(%struct.serio* %72, %struct.serio_driver* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %137

78:                                               ; preds = %68
  %79 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %80 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %85 = call i64 @atkbd_probe(%struct.atkbd* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %134

90:                                               ; preds = %83
  %91 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %92 = load i32, i32* @atkbd_set, align 4
  %93 = load i32, i32* @atkbd_extra, align 4
  %94 = call i32 @atkbd_select_set(%struct.atkbd* %91, i32 %92, i32 %93)
  %95 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %96 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %98 = call i32 @atkbd_reset_state(%struct.atkbd* %97)
  %99 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %100 = call i32 @atkbd_activate(%struct.atkbd* %99)
  br label %106

101:                                              ; preds = %78
  %102 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %103 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %102, i32 0, i32 3
  store i32 2, i32* %103, align 4
  %104 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %105 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %104, i32 0, i32 4
  store i32 43776, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %90
  %107 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %108 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %107)
  %109 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %110 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %109)
  %111 = load %struct.serio*, %struct.serio** %4, align 8
  %112 = getelementptr inbounds %struct.serio, %struct.serio* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = call i32 @sysfs_create_group(i32* %113, i32* @atkbd_attribute_group)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %134

118:                                              ; preds = %106
  %119 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %120 = call i32 @atkbd_enable(%struct.atkbd* %119)
  %121 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %122 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %121, i32 0, i32 5
  %123 = load %struct.input_dev*, %struct.input_dev** %122, align 8
  %124 = call i32 @input_register_device(%struct.input_dev* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %129

128:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %146

129:                                              ; preds = %127
  %130 = load %struct.serio*, %struct.serio** %4, align 8
  %131 = getelementptr inbounds %struct.serio, %struct.serio* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @sysfs_remove_group(i32* %132, i32* @atkbd_attribute_group)
  br label %134

134:                                              ; preds = %129, %117, %87
  %135 = load %struct.serio*, %struct.serio** %4, align 8
  %136 = call i32 @serio_close(%struct.serio* %135)
  br label %137

137:                                              ; preds = %134, %77
  %138 = load %struct.serio*, %struct.serio** %4, align 8
  %139 = call i32 @serio_set_drvdata(%struct.serio* %138, %struct.atkbd* null)
  br label %140

140:                                              ; preds = %137, %19
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = call i32 @input_free_device(%struct.input_dev* %141)
  %143 = load %struct.atkbd*, %struct.atkbd** %6, align 8
  %144 = call i32 @kfree(%struct.atkbd* %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %128
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.atkbd* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @ps2_init(i32*, %struct.serio*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.atkbd*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i64 @atkbd_probe(%struct.atkbd*) #1

declare dso_local i32 @atkbd_select_set(%struct.atkbd*, i32, i32) #1

declare dso_local i32 @atkbd_reset_state(%struct.atkbd*) #1

declare dso_local i32 @atkbd_activate(%struct.atkbd*) #1

declare dso_local i32 @atkbd_set_keycode_table(%struct.atkbd*) #1

declare dso_local i32 @atkbd_set_device_attrs(%struct.atkbd*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @atkbd_enable(%struct.atkbd*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.atkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
