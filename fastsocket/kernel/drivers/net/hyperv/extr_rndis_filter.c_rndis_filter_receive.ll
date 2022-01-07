; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_netvsc_packet = type { i32, %struct.rndis_message* }
%struct.rndis_message = type { i32, i32 }
%struct.netvsc_device = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rndis_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"got rndis message but no rndis device - dropping this message!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RNDIS_DEV_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"got rndis message but rndis device uninitialized...dropping this message!\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"unhandled rndis message (type %u len %u)\0A\00", align 1
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_filter_receive(%struct.hv_device* %0, %struct.hv_netvsc_packet* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_netvsc_packet*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.rndis_device*, align 8
  %7 = alloca %struct.rndis_message*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.hv_netvsc_packet* %1, %struct.hv_netvsc_packet** %4, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %11 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %10)
  store %struct.netvsc_device* %11, %struct.netvsc_device** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %13 = icmp ne %struct.netvsc_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %19 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %22 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %78

30:                                               ; preds = %17
  %31 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %32 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.rndis_device*
  store %struct.rndis_device* %34, %struct.rndis_device** %6, align 8
  %35 = load %struct.rndis_device*, %struct.rndis_device** %6, align 8
  %36 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RNDIS_DEV_UNINITIALIZED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %78

45:                                               ; preds = %30
  %46 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %4, align 8
  %47 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %46, i32 0, i32 1
  %48 = load %struct.rndis_message*, %struct.rndis_message** %47, align 8
  store %struct.rndis_message* %48, %struct.rndis_message** %7, align 8
  %49 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %50 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %51 = call i32 @dump_rndis_message(%struct.hv_device* %49, %struct.rndis_message* %50)
  %52 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %53 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %68 [
    i32 130, label %55
    i32 131, label %60
    i32 129, label %60
    i32 128, label %60
    i32 132, label %64
  ]

55:                                               ; preds = %45
  %56 = load %struct.rndis_device*, %struct.rndis_device** %6, align 8
  %57 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %58 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %4, align 8
  %59 = call i32 @rndis_filter_receive_data(%struct.rndis_device* %56, %struct.rndis_message* %57, %struct.hv_netvsc_packet* %58)
  br label %77

60:                                               ; preds = %45, %45, %45
  %61 = load %struct.rndis_device*, %struct.rndis_device** %6, align 8
  %62 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %63 = call i32 @rndis_filter_receive_response(%struct.rndis_device* %61, %struct.rndis_message* %62)
  br label %77

64:                                               ; preds = %45
  %65 = load %struct.rndis_device*, %struct.rndis_device** %6, align 8
  %66 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %67 = call i32 @rndis_filter_receive_indicate_status(%struct.rndis_device* %65, %struct.rndis_message* %66)
  br label %77

68:                                               ; preds = %45
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %71 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rndis_message*, %struct.rndis_message** %7, align 8
  %74 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %64, %60, %55
  br label %78

78:                                               ; preds = %77, %40, %25, %14
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @NVSP_STAT_FAIL, align 4
  %83 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %4, align 8
  %84 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dump_rndis_message(%struct.hv_device*, %struct.rndis_message*) #1

declare dso_local i32 @rndis_filter_receive_data(%struct.rndis_device*, %struct.rndis_message*, %struct.hv_netvsc_packet*) #1

declare dso_local i32 @rndis_filter_receive_response(%struct.rndis_device*, %struct.rndis_message*) #1

declare dso_local i32 @rndis_filter_receive_indicate_status(%struct.rndis_device*, %struct.rndis_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
