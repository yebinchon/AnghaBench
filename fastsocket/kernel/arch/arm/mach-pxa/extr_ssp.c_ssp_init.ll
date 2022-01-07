; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_dev = type { i32, i32, %struct.ssp_device* }
%struct.ssp_device = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"SSP\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SSP_NO_IRQ = common dso_local global i32 0, align 4
@ssp_interrupt = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_init(%struct.ssp_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssp_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ssp_dev* %0, %struct.ssp_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ssp_device* @ssp_request(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.ssp_device* %11, %struct.ssp_device** %8, align 8
  %12 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %13 = icmp eq %struct.ssp_device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %19 = load %struct.ssp_dev*, %struct.ssp_dev** %5, align 8
  %20 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %19, i32 0, i32 2
  store %struct.ssp_device* %18, %struct.ssp_device** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ssp_dev*, %struct.ssp_dev** %5, align 8
  %23 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SSP_NO_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %17
  %29 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %30 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ssp_interrupt, align 4
  %33 = load %struct.ssp_dev*, %struct.ssp_dev** %5, align 8
  %34 = call i32 @request_irq(i32 %31, i32 %32, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ssp_dev* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %40 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ssp_dev*, %struct.ssp_dev** %5, align 8
  %43 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %17
  %45 = load i32, i32* @NO_IRQ, align 4
  %46 = load %struct.ssp_dev*, %struct.ssp_dev** %5, align 8
  %47 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %50 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_enable(i32 %51)
  store i32 0, i32* %4, align 4
  br label %57

53:                                               ; preds = %37
  %54 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %55 = call i32 @ssp_free(%struct.ssp_device* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %48, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.ssp_device* @ssp_request(i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ssp_dev*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @ssp_free(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
