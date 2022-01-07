; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_read_fwlog_panic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_read_fwlog_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Reading FW panic log\00", align 1
@WL12XX_HW_BLOCK_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@WL12XX_FWLOG_OUTPUT_DBG_PINS = common dso_local global i64 0, align 8
@WL12XX_FWLOG_CONTINUOUS = common dso_local global i64 0, align 8
@WLCORE_FW_LOG_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wl12xx_read_fwlog_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_read_fwlog_panic(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  br label %128

22:                                               ; preds = %14
  %23 = call i32 @wl1271_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @WL12XX_HW_BLOCK_SIZE, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i64 %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %128

30:                                               ; preds = %22
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = call i64 @wl1271_ps_elp_wakeup(%struct.wl1271* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %125

35:                                               ; preds = %30
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WL12XX_FWLOG_OUTPUT_DBG_PINS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %50 = call i32 @wl12xx_cmd_stop_fwlog(%struct.wl1271* %49)
  br label %51

51:                                               ; preds = %48, %40, %35
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @wlcore_fw_status(%struct.wl1271* %52, i32 %55, %struct.TYPE_6__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %125

63:                                               ; preds = %51
  %64 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %125

73:                                               ; preds = %63
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WL12XX_FWLOG_CONTINUOUS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  store i64 12, i64* %4, align 8
  %82 = load i64, i64* @WLCORE_FW_LOG_END, align 8
  store i64 %82, i64* %5, align 8
  br label %85

83:                                               ; preds = %73
  store i64 8, i64* %4, align 8
  %84 = load i64, i64* %3, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %119, %85
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* @WL12XX_HW_BLOCK_SIZE, align 8
  %89 = call i32 @memset(i32* %87, i32 0, i64 %88)
  %90 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* @WL12XX_HW_BLOCK_SIZE, align 8
  %94 = call i32 @wlcore_read_hwaddr(%struct.wl1271* %90, i64 %91, i32* %92, i64 %93, i32 0)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %125

98:                                               ; preds = %86
  %99 = load i32*, i32** %6, align 8
  %100 = call i64 @le32_to_cpup(i32* %99)
  store i64 %100, i64* %3, align 8
  %101 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i64, i64* @WL12XX_HW_BLOCK_SIZE, align 8
  %106 = load i64, i64* %4, align 8
  %107 = sub nsw i64 %105, %106
  %108 = call i32 @wl12xx_copy_fwlog(%struct.wl1271* %101, i32* %104, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %98
  br label %121

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %3, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp ne i64 %116, %117
  br label %119

119:                                              ; preds = %115, %112
  %120 = phi i1 [ false, %112 ], [ %118, %115 ]
  br i1 %120, label %86, label %121

121:                                              ; preds = %119, %110
  %122 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %123 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %122, i32 0, i32 1
  %124 = call i32 @wake_up_interruptible(i32* %123)
  br label %125

125:                                              ; preds = %121, %97, %72, %62, %34
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @kfree(i32* %126)
  br label %128

128:                                              ; preds = %125, %29, %21
  ret void
}

declare dso_local i32 @wl1271_info(i8*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_cmd_stop_fwlog(%struct.wl1271*) #1

declare dso_local i32 @wlcore_fw_status(%struct.wl1271*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @wlcore_read_hwaddr(%struct.wl1271*, i64, i32*, i64, i32) #1

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local i32 @wl12xx_copy_fwlog(%struct.wl1271*, i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
