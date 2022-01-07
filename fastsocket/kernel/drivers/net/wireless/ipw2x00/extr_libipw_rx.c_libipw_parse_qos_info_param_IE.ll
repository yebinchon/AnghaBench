; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_parse_qos_info_param_IE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_parse_qos_info_param_IE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_info_element = type { i32 }
%struct.libipw_network = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.libipw_qos_parameters }
%struct.libipw_qos_parameters = type { i32 }
%struct.libipw_qos_information_element = type { i32 }
%struct.libipw_qos_parameter_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NETWORK_HAS_QOS_INFORMATION = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_PARAMETERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"QoS is supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_info_element*, %struct.libipw_network*)* @libipw_parse_qos_info_param_IE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_parse_qos_info_param_IE(%struct.libipw_info_element* %0, %struct.libipw_network* %1) #0 {
  %3 = alloca %struct.libipw_info_element*, align 8
  %4 = alloca %struct.libipw_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_qos_parameters*, align 8
  %7 = alloca %struct.libipw_qos_information_element, align 4
  %8 = alloca %struct.libipw_qos_parameter_info, align 4
  store %struct.libipw_info_element* %0, %struct.libipw_info_element** %3, align 8
  store %struct.libipw_network* %1, %struct.libipw_network** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.libipw_qos_parameters* null, %struct.libipw_qos_parameters** %6, align 8
  %9 = load %struct.libipw_info_element*, %struct.libipw_info_element** %3, align 8
  %10 = call i32 @libipw_read_qos_info_element(%struct.libipw_qos_information_element* %7, %struct.libipw_info_element* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.libipw_qos_information_element, %struct.libipw_qos_information_element* %7, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  %17 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %18 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @NETWORK_HAS_QOS_INFORMATION, align 4
  %21 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %22 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.libipw_info_element*, %struct.libipw_info_element** %3, align 8
  %27 = call i32 @libipw_read_qos_param_element(%struct.libipw_qos_parameter_info* %8, %struct.libipw_info_element* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %32 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.libipw_qos_parameters* %33, %struct.libipw_qos_parameters** %6, align 8
  %34 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %6, align 8
  %35 = call i32 @libipw_qos_convert_ac_to_parameters(%struct.libipw_qos_parameter_info* %8, %struct.libipw_qos_parameters* %34)
  %36 = load i32, i32* @NETWORK_HAS_QOS_PARAMETERS, align 4
  %37 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %38 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.libipw_qos_parameter_info, %struct.libipw_qos_parameter_info* %8, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %46 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %30, %25
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = call i32 @LIBIPW_DEBUG_QOS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %55 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @libipw_read_qos_info_element(%struct.libipw_qos_information_element*, %struct.libipw_info_element*) #1

declare dso_local i32 @libipw_read_qos_param_element(%struct.libipw_qos_parameter_info*, %struct.libipw_info_element*) #1

declare dso_local i32 @libipw_qos_convert_ac_to_parameters(%struct.libipw_qos_parameter_info*, %struct.libipw_qos_parameters*) #1

declare dso_local i32 @LIBIPW_DEBUG_QOS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
