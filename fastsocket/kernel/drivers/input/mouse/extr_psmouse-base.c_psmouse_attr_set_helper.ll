; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.serio = type { %struct.serio*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.psmouse_attribute = type { i32 (%struct.psmouse*, i32, i8*, i64)*, i64, i32 }
%struct.psmouse = type opaque
%struct.psmouse.0 = type { i64 }

@psmouse_drv = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@psmouse_mutex = common dso_local global i32 0, align 4
@PSMOUSE_IGNORE = common dso_local global i64 0, align 8
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_attr_set_helper(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.serio*, align 8
  %11 = alloca %struct.psmouse_attribute*, align 8
  %12 = alloca %struct.psmouse.0*, align 8
  %13 = alloca %struct.psmouse.0*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.serio* @to_serio_port(%struct.device* %15)
  store %struct.serio* %16, %struct.serio** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute* %17)
  store %struct.psmouse_attribute* %18, %struct.psmouse_attribute** %11, align 8
  store %struct.psmouse.0* null, %struct.psmouse.0** %13, align 8
  %19 = load %struct.serio*, %struct.serio** %10, align 8
  %20 = call i32 @serio_pin_driver(%struct.serio* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %114

25:                                               ; preds = %4
  %26 = load %struct.serio*, %struct.serio** %10, align 8
  %27 = getelementptr inbounds %struct.serio, %struct.serio* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, @psmouse_drv
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  br label %110

33:                                               ; preds = %25
  %34 = call i32 @mutex_lock_interruptible(i32* @psmouse_mutex)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %110

38:                                               ; preds = %33
  %39 = load %struct.serio*, %struct.serio** %10, align 8
  %40 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %39)
  store %struct.psmouse.0* %40, %struct.psmouse.0** %12, align 8
  %41 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %11, align 8
  %42 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  %46 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %47 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PSMOUSE_IGNORE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %108

54:                                               ; preds = %45
  %55 = load %struct.serio*, %struct.serio** %10, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 0
  %57 = load %struct.serio*, %struct.serio** %56, align 8
  %58 = icmp ne %struct.serio* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.serio*, %struct.serio** %10, align 8
  %61 = getelementptr inbounds %struct.serio, %struct.serio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.serio*, %struct.serio** %10, align 8
  %68 = getelementptr inbounds %struct.serio, %struct.serio* %67, i32 0, i32 0
  %69 = load %struct.serio*, %struct.serio** %68, align 8
  %70 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %69)
  store %struct.psmouse.0* %70, %struct.psmouse.0** %13, align 8
  %71 = load %struct.psmouse.0*, %struct.psmouse.0** %13, align 8
  %72 = call i32 @psmouse_deactivate(%struct.psmouse.0* %71)
  br label %73

73:                                               ; preds = %66, %59, %54
  %74 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %75 = call i32 @psmouse_deactivate(%struct.psmouse.0* %74)
  br label %76

76:                                               ; preds = %73, %38
  %77 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %11, align 8
  %78 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %77, i32 0, i32 0
  %79 = load i32 (%struct.psmouse*, i32, i8*, i64)*, i32 (%struct.psmouse*, i32, i8*, i64)** %78, align 8
  %80 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %81 = bitcast %struct.psmouse.0* %80 to %struct.psmouse*
  %82 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %11, align 8
  %83 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 %79(%struct.psmouse* %81, i32 %84, i8* %85, i64 %86)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %11, align 8
  %89 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %76
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %99 = call i32 @psmouse_activate(%struct.psmouse.0* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.psmouse.0*, %struct.psmouse.0** %13, align 8
  %102 = icmp ne %struct.psmouse.0* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.psmouse.0*, %struct.psmouse.0** %13, align 8
  %105 = call i32 @psmouse_activate(%struct.psmouse.0* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %51
  %109 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  br label %110

110:                                              ; preds = %108, %37, %30
  %111 = load %struct.serio*, %struct.serio** %10, align 8
  %112 = call i32 @serio_unpin_driver(%struct.serio* %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %23
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute*) #1

declare dso_local i32 @serio_pin_driver(%struct.serio*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.psmouse.0* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse.0*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse.0*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @serio_unpin_driver(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
