; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_7__*, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@bt3c_check_config = common dso_local global i32 0, align 4
@bt3c_check_config_notpicky = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No usable port range found\00", align 1
@RequestIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RequestIRQ = common dso_local global i32 0, align 4
@RequestConfiguration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @bt3c_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load i32, i32* @bt3c_check_config, align 4
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %14, i32 %15, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %38

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = load i32, i32* @bt3c_check_config_notpicky, align 4
  %28 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %26, i32 %27, i8* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = load i32, i32* @RequestIO, align 4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @cs_error(%struct.pcmcia_device* %33, i32 %34, i32 %36)
  br label %85

38:                                               ; preds = %30, %20
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  %42 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %39, %struct.TYPE_9__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = load i32, i32* @RequestIRQ, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @cs_error(%struct.pcmcia_device* %46, i32 %47, i32 %48)
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 1
  %57 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %54, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %62 = load i32, i32* @RequestConfiguration, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cs_error(%struct.pcmcia_device* %61, i32 %62, i32 %63)
  br label %85

65:                                               ; preds = %53
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = call i64 @bt3c_open(%struct.TYPE_8__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strcpy(i32 %74, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %84 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %83, i32 0, i32 0
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  store i32 0, i32* %2, align 4
  br label %90

85:                                               ; preds = %69, %60, %31
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = call i32 @bt3c_release(%struct.pcmcia_device* %86)
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %70
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i8*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, i32*) #1

declare dso_local i64 @bt3c_open(%struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @bt3c_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
