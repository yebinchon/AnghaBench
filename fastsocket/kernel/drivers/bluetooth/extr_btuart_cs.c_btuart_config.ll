; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_7__*, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@btuart_check_config = common dso_local global i32 0, align 4
@btuart_check_config_notpicky = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No usable port range found\00", align 1
@RequestIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RequestIRQ = common dso_local global i32 0, align 4
@RequestConfiguration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @btuart_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btuart_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load i32, i32* @btuart_check_config, align 4
  %16 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %14, i32 %15, i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = load i32, i32* @btuart_check_config_notpicky, align 4
  %26 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %24, i32 %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %36

29:                                               ; preds = %23
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = load i32, i32* @RequestIO, align 4
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @cs_error(%struct.pcmcia_device* %31, i32 %32, i32 %34)
  br label %83

36:                                               ; preds = %28, %18
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 2
  %40 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %37, %struct.TYPE_9__* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = load i32, i32* @RequestIRQ, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @cs_error(%struct.pcmcia_device* %44, i32 %45, i32 %46)
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 1
  %55 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %52, i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = load i32, i32* @RequestConfiguration, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @cs_error(%struct.pcmcia_device* %59, i32 %60, i32 %61)
  br label %83

63:                                               ; preds = %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i64 @btuart_open(%struct.TYPE_8__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %83

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcpy(i32 %72, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %81, i32 0, i32 0
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %82, align 8
  store i32 0, i32* %2, align 4
  br label %88

83:                                               ; preds = %67, %58, %29
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %85 = call i32 @btuart_release(%struct.pcmcia_device* %84)
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %68
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, i32*) #1

declare dso_local i64 @btuart_open(%struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @btuart_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
