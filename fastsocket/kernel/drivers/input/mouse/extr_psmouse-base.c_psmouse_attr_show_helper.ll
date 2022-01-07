; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_show_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_show_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.serio = type { i32* }
%struct.psmouse_attribute = type { i32 (%struct.psmouse*, i32, i8*)*, i32 }
%struct.psmouse = type opaque
%struct.psmouse.0 = type { i32 }

@psmouse_drv = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_attr_show_helper(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.serio*, align 8
  %9 = alloca %struct.psmouse_attribute*, align 8
  %10 = alloca %struct.psmouse.0*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.serio* @to_serio_port(%struct.device* %12)
  store %struct.serio* %13, %struct.serio** %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute* %14)
  store %struct.psmouse_attribute* %15, %struct.psmouse_attribute** %9, align 8
  %16 = load %struct.serio*, %struct.serio** %8, align 8
  %17 = call i32 @serio_pin_driver(%struct.serio* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.serio*, %struct.serio** %8, align 8
  %24 = getelementptr inbounds %struct.serio, %struct.serio* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, @psmouse_drv
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.serio*, %struct.serio** %8, align 8
  %32 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %31)
  store %struct.psmouse.0* %32, %struct.psmouse.0** %10, align 8
  %33 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %9, align 8
  %34 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %33, i32 0, i32 0
  %35 = load i32 (%struct.psmouse*, i32, i8*)*, i32 (%struct.psmouse*, i32, i8*)** %34, align 8
  %36 = load %struct.psmouse.0*, %struct.psmouse.0** %10, align 8
  %37 = bitcast %struct.psmouse.0* %36 to %struct.psmouse*
  %38 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %9, align 8
  %39 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 %35(%struct.psmouse* %37, i32 %40, i8* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = load %struct.serio*, %struct.serio** %8, align 8
  %45 = call i32 @serio_unpin_driver(%struct.serio* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute*) #1

declare dso_local i32 @serio_pin_driver(%struct.serio*) #1

declare dso_local %struct.psmouse.0* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @serio_unpin_driver(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
