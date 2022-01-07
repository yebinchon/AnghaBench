; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_acx_config_memory = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"acx mem cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_NUM_STATIONS = common dso_local global i32 0, align 4
@MAX_TX_QUEUES = common dso_local global i32 0, align 4
@HOSTIF_PKT_RING = common dso_local global i32 0, align 4
@TRACE_BUFFER_MAX_SIZE = common dso_local global i32 0, align 4
@ACX_RX_DESC_DEF = common dso_local global i32 0, align 4
@DEFAULT_RXQ_PRIORITY = common dso_local global i32 0, align 4
@DEFAULT_RXQ_TYPE = common dso_local global i32 0, align 4
@ACX_TX_DESC_DEF = common dso_local global i32 0, align 4
@ACX_MEM_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wl1251 mem config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_mem_cfg(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.wl1251_acx_config_memory*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wl1251_acx_config_memory* @kzalloc(i32 72, i32 %8)
  store %struct.wl1251_acx_config_memory* %9, %struct.wl1251_acx_config_memory** %3, align 8
  %10 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %11 = icmp ne %struct.wl1251_acx_config_memory* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %93

15:                                               ; preds = %1
  %16 = load i32, i32* @DEFAULT_NUM_STATIONS, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %19 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  store i8* %17, i8** %20, align 8
  %21 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %22 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 35, i32* %23, align 8
  %24 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %25 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 64, i32* %26, align 4
  %27 = load i32, i32* @MAX_TX_QUEUES, align 4
  %28 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %29 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @HOSTIF_PKT_RING, align 4
  %32 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %33 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %36 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @TRACE_BUFFER_MAX_SIZE, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %41 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i8* %39, i8** %42, align 8
  %43 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %44 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @ACX_RX_DESC_DEF, align 4
  %47 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %48 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @DEFAULT_RXQ_PRIORITY, align 4
  %51 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %52 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @DEFAULT_RXQ_TYPE, align 4
  %55 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %56 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %79, %15
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MAX_TX_QUEUES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* @ACX_TX_DESC_DEF, align 4
  %64 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %65 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %73 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %84 = load i32, i32* @ACX_MEM_CFG, align 4
  %85 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %86 = call i32 @wl1251_cmd_configure(%struct.wl1251* %83, i32 %84, %struct.wl1251_acx_config_memory* %85, i32 72)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @wl1251_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %89, %12
  %94 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %3, align 8
  %95 = call i32 @kfree(%struct.wl1251_acx_config_memory* %94)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.wl1251_acx_config_memory* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.wl1251_acx_config_memory*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_config_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
