; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_device_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.flexcop_device = type { i64 (%struct.flexcop_device*, i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ibi_zero = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"MAC address = %pM\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"reading of MAC address failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"initialization of\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_device_initialize(%struct.flexcop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ibi_zero, i32 0, i32 0), align 8
  %6 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %7 = call i32 @flexcop_reset(%struct.flexcop_device* %6)
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %9 = call i32 @flexcop_determine_revision(%struct.flexcop_device* %8)
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %11 = call i32 @flexcop_sram_init(%struct.flexcop_device* %10)
  %12 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %13 = call i32 @flexcop_hw_filter_init(%struct.flexcop_device* %12)
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %15 = call i32 @flexcop_smc_ctrl(%struct.flexcop_device* %14, i32 0)
  %16 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %17 = call i32 @flexcop_dvb_init(%struct.flexcop_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %22 = call i32 @flexcop_i2c_init(%struct.flexcop_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %55

26:                                               ; preds = %20
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %28 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %27, i32 0, i32 0
  %29 = load i64 (%struct.flexcop_device*, i32)*, i64 (%struct.flexcop_device*, i32)** %28, align 8
  %30 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %31 = call i64 %29(%struct.flexcop_device* %30, i32 0)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %35 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @flexcop_set_mac_filter(%struct.flexcop_device* %40, i32* %41)
  %43 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %44 = call i32 @flexcop_mac_filter_ctrl(%struct.flexcop_device* %43, i32 1)
  br label %47

45:                                               ; preds = %26
  %46 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %33
  %48 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %49 = call i32 @flexcop_frontend_init(%struct.flexcop_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %55

52:                                               ; preds = %47
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %54 = call i32 @flexcop_device_name(%struct.flexcop_device* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %51, %25, %19
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %57 = call i32 @flexcop_device_exit(%struct.flexcop_device* %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @flexcop_reset(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_determine_revision(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_sram_init(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_hw_filter_init(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_smc_ctrl(%struct.flexcop_device*, i32) #1

declare dso_local i32 @flexcop_dvb_init(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_i2c_init(%struct.flexcop_device*) #1

declare dso_local i32 @info(i8*, i32*) #1

declare dso_local i32 @flexcop_set_mac_filter(%struct.flexcop_device*, i32*) #1

declare dso_local i32 @flexcop_mac_filter_ctrl(%struct.flexcop_device*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @flexcop_frontend_init(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_device_name(%struct.flexcop_device*, i8*, i8*) #1

declare dso_local i32 @flexcop_device_exit(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
