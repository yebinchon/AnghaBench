; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_main.c_ipwireless_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_main.c_ipwireless_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32*, %struct.TYPE_2__, %struct.ipw_dev* }
%struct.TYPE_2__ = type { %struct.ipw_dev* }
%struct.ipw_dev = type { i32, i32*, %struct.pcmcia_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RegisterClient = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ipwireless_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipwireless_attach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.ipw_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ipw_dev* @kzalloc(i32 24, i32 %6)
  store %struct.ipw_dev* %7, %struct.ipw_dev** %4, align 8
  %8 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %9 = icmp ne %struct.ipw_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %15, i32 0, i32 2
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 2
  store %struct.ipw_dev* %17, %struct.ipw_dev** %19, align 8
  %20 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ipw_dev* %20, %struct.ipw_dev** %23, align 8
  %24 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %25 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = call i32 (...) @ipwireless_hardware_create()
  %31 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %32 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %34 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %13
  %38 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %39 = call i32 @kfree(%struct.ipw_dev* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %13
  %43 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %44 = call i32 @config_ipwireless(%struct.ipw_dev* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = load i32, i32* @RegisterClient, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cs_error(%struct.pcmcia_device* %48, i32 %49, i32 %50)
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = call i32 @ipwireless_detach(%struct.pcmcia_device* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %47, %37, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ipw_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @ipwireless_hardware_create(...) #1

declare dso_local i32 @kfree(%struct.ipw_dev*) #1

declare dso_local i32 @config_ipwireless(%struct.ipw_dev*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @ipwireless_detach(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
