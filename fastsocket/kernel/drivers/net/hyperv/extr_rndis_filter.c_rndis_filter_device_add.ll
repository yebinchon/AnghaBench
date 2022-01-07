; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_device_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { %struct.rndis_device* }
%struct.rndis_device = type { i32, i64, %struct.netvsc_device* }
%struct.netvsc_device_info = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Device MAC %pM link state %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_filter_device_add(%struct.hv_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.rndis_device*, align 8
  %9 = alloca %struct.netvsc_device_info*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.netvsc_device_info*
  store %struct.netvsc_device_info* %11, %struct.netvsc_device_info** %9, align 8
  %12 = call %struct.rndis_device* (...) @get_rndis_device()
  store %struct.rndis_device* %12, %struct.rndis_device** %8, align 8
  %13 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %14 = icmp ne %struct.rndis_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @netvsc_device_add(%struct.hv_device* %19, i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %26 = call i32 @kfree(%struct.rndis_device* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %18
  %29 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %30 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %29)
  store %struct.netvsc_device* %30, %struct.netvsc_device** %7, align 8
  %31 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %33 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %32, i32 0, i32 0
  store %struct.rndis_device* %31, %struct.rndis_device** %33, align 8
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %35 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %36 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %35, i32 0, i32 2
  store %struct.netvsc_device* %34, %struct.netvsc_device** %36, align 8
  %37 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %38 = call i32 @rndis_filter_init_device(%struct.rndis_device* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %43 = call i32 @rndis_filter_device_remove(%struct.hv_device* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %28
  %46 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %47 = call i32 @rndis_filter_query_device_mac(%struct.rndis_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %52 = call i32 @rndis_filter_device_remove(%struct.hv_device* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %83

54:                                               ; preds = %45
  %55 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %9, align 8
  %56 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %59 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %64 = call i32 @rndis_filter_query_device_link_status(%struct.rndis_device* %63)
  %65 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %66 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %9, align 8
  %69 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %71 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %70, i32 0, i32 0
  %72 = load %struct.rndis_device*, %struct.rndis_device** %8, align 8
  %73 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %9, align 8
  %76 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %74, i8* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %54, %50, %41, %24, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.rndis_device* @get_rndis_device(...) #1

declare dso_local i32 @netvsc_device_add(%struct.hv_device*, i8*) #1

declare dso_local i32 @kfree(%struct.rndis_device*) #1

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @rndis_filter_init_device(%struct.rndis_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*) #1

declare dso_local i32 @rndis_filter_query_device_mac(%struct.rndis_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rndis_filter_query_device_link_status(%struct.rndis_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
