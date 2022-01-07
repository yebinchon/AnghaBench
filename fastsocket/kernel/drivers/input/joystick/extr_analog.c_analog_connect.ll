; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.gameport_driver = type { i32 }
%struct.analog_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@analog_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @analog_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_connect(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca %struct.analog_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.analog_port* @kzalloc(i32 8, i32 %9)
  store %struct.analog_port* %10, %struct.analog_port** %6, align 8
  %11 = icmp ne %struct.analog_port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.gameport*, %struct.gameport** %4, align 8
  %17 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %18 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %19 = call i32 @analog_init_port(%struct.gameport* %16, %struct.gameport_driver* %17, %struct.analog_port* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %97

23:                                               ; preds = %15
  %24 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %25 = call i32 @analog_init_masks(%struct.analog_port* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %94

29:                                               ; preds = %23
  %30 = load %struct.gameport*, %struct.gameport** %4, align 8
  %31 = load i32, i32* @analog_poll, align 4
  %32 = call i32 @gameport_set_poll_handler(%struct.gameport* %30, i32 %31)
  %33 = load %struct.gameport*, %struct.gameport** %4, align 8
  %34 = call i32 @gameport_set_poll_interval(%struct.gameport* %33, i32 10)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %63, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %40 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %50 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %51 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @analog_init_device(%struct.analog_port* %49, %struct.TYPE_2__* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %67

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %35

66:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %103

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %74 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %84 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @input_unregister_device(i32 %90)
  br label %92

92:                                               ; preds = %82, %72
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %28
  %95 = load %struct.gameport*, %struct.gameport** %4, align 8
  %96 = call i32 @gameport_close(%struct.gameport* %95)
  br label %97

97:                                               ; preds = %94, %22
  %98 = load %struct.gameport*, %struct.gameport** %4, align 8
  %99 = call i32 @gameport_set_drvdata(%struct.gameport* %98, i32* null)
  %100 = load %struct.analog_port*, %struct.analog_port** %6, align 8
  %101 = call i32 @kfree(%struct.analog_port* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %66, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.analog_port* @kzalloc(i32, i32) #1

declare dso_local i32 @analog_init_port(%struct.gameport*, %struct.gameport_driver*, %struct.analog_port*) #1

declare dso_local i32 @analog_init_masks(%struct.analog_port*) #1

declare dso_local i32 @gameport_set_poll_handler(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_set_poll_interval(%struct.gameport*, i32) #1

declare dso_local i32 @analog_init_device(%struct.analog_port*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

declare dso_local i32 @kfree(%struct.analog_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
