; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_disable_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { %struct.TYPE_2__*, %struct.vpfe_config* }
%struct.TYPE_2__ = type { i32 }
%struct.vpfe_config = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"vpfe vpss master & slave clocks disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_device*)* @vpfe_disable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_disable_clock(%struct.vpfe_device* %0) #0 {
  %2 = alloca %struct.vpfe_device*, align 8
  %3 = alloca %struct.vpfe_config*, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %2, align 8
  %4 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %5 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %4, i32 0, i32 1
  %6 = load %struct.vpfe_config*, %struct.vpfe_config** %5, align 8
  store %struct.vpfe_config* %6, %struct.vpfe_config** %3, align 8
  %7 = load %struct.vpfe_config*, %struct.vpfe_config** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_disable(i32 %9)
  %11 = load %struct.vpfe_config*, %struct.vpfe_config** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_put(i32 %13)
  %15 = load %struct.vpfe_config*, %struct.vpfe_config** %3, align 8
  %16 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable(i32 %17)
  %19 = load %struct.vpfe_config*, %struct.vpfe_config** %3, align 8
  %20 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_put(i32 %21)
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_info(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @v4l2_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
