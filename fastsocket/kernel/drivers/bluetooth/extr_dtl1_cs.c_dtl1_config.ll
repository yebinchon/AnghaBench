; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_9__*, i32, %struct.TYPE_11__, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@dtl1_confcheck = common dso_local global i32 0, align 4
@RequestIRQ = common dso_local global i32 0, align 4
@RequestConfiguration = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @dtl1_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 8, i32* %11, align 8
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = load i32, i32* @dtl1_confcheck, align 4
  %14 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %12, i32 %13, i32* null)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 2
  %21 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %18, %struct.TYPE_11__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = load i32, i32* @RequestIRQ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cs_error(%struct.pcmcia_device* %25, i32 %26, i32 %27)
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 1
  %36 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %33, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = load i32, i32* @RequestConfiguration, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cs_error(%struct.pcmcia_device* %40, i32 %41, i32 %42)
  br label %64

44:                                               ; preds = %32
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i64 @dtl1_open(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %64

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcpy(i32 %53, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 0
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %63, align 8
  store i32 0, i32* %2, align 4
  br label %69

64:                                               ; preds = %48, %39, %16
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = call i32 @dtl1_release(%struct.pcmcia_device* %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, i32*) #1

declare dso_local i64 @dtl1_open(%struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @dtl1_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
