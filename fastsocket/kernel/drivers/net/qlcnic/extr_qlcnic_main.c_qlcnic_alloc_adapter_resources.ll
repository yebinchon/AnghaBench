; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_adapter_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_adapter_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to allocate recv ctx resources for adapter\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_INTR_DEFAULT = common dso_local global i32 0, align 4
@QLCNIC_INTR_COAL_TYPE_RX = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_RX_TIME_US = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_RX_PACKETS = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_TX_TIME_US = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_TX_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_alloc_adapter_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_alloc_adapter_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 3
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  store %struct.qlcnic_hardware_context* %7, %struct.qlcnic_hardware_context** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kzalloc(i32 4, i32 %8)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load i32, i32* @QLCNIC_INTR_DEFAULT, align 4
  %26 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @QLCNIC_INTR_COAL_TYPE_RX, align 4
  %30 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_RX_TIME_US, align 4
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_RX_PACKETS, align 4
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %42 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %24
  %45 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_TX_TIME_US, align 4
  %46 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_TX_PACKETS, align 4
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %24
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  %56 = call i32 @memset(i32* %55, i32 0, i32 4)
  br label %57

57:                                               ; preds = %53, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
