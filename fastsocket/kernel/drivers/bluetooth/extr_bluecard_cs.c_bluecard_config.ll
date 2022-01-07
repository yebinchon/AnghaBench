; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_9__*, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@RequestIO = common dso_local global i32 0, align 4
@RequestIRQ = common dso_local global i32 0, align 4
@RequestConfiguration = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @bluecard_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 32, i32* %12, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 64, i32* %15, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 6, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 1024
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, 768
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 3
  %31 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %28, %struct.TYPE_12__* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %39

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 64
  store i32 %38, i32* %6, align 4
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = load i32, i32* @RequestIO, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cs_error(%struct.pcmcia_device* %43, i32 %44, i32 %45)
  br label %94

47:                                               ; preds = %39
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 2
  %51 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %48, %struct.TYPE_11__* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = load i32, i32* @RequestIRQ, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cs_error(%struct.pcmcia_device* %55, i32 %56, i32 %57)
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %64 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %65 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %64, i32 0, i32 1
  %66 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %63, %struct.TYPE_13__* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %71 = load i32, i32* @RequestConfiguration, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @cs_error(%struct.pcmcia_device* %70, i32 %71, i32 %72)
  br label %94

74:                                               ; preds = %62
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i64 @bluecard_open(%struct.TYPE_10__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %94

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcpy(i32 %83, i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %93 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %92, i32 0, i32 0
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %93, align 8
  store i32 0, i32* %2, align 4
  br label %99

94:                                               ; preds = %78, %69, %42
  %95 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %96 = call i32 @bluecard_release(%struct.pcmcia_device* %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %94, %79
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_12__*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, %struct.TYPE_13__*) #1

declare dso_local i64 @bluecard_open(%struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @bluecard_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
