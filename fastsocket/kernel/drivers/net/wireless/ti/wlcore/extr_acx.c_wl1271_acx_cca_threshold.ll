; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_cca_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_cca_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.acx_energy_detection = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"acx cca threshold\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_CCA_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set cca threshold: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_cca_threshold(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.acx_energy_detection*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_energy_detection* @kzalloc(i32 8, i32 %7)
  store %struct.acx_energy_detection* %8, %struct.acx_energy_detection** %3, align 8
  %9 = load %struct.acx_energy_detection*, %struct.acx_energy_detection** %3, align 8
  %10 = icmp ne %struct.acx_energy_detection* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.acx_energy_detection*, %struct.acx_energy_detection** %3, align 8
  %22 = getelementptr inbounds %struct.acx_energy_detection, %struct.acx_energy_detection* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.acx_energy_detection*, %struct.acx_energy_detection** %3, align 8
  %29 = getelementptr inbounds %struct.acx_energy_detection, %struct.acx_energy_detection* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @ACX_CCA_THRESHOLD, align 4
  %32 = load %struct.acx_energy_detection*, %struct.acx_energy_detection** %3, align 8
  %33 = call i32 @wl1271_cmd_configure(%struct.wl1271* %30, i32 %31, %struct.acx_energy_detection* %32, i32 8)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %14
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %14
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.acx_energy_detection*, %struct.acx_energy_detection** %3, align 8
  %42 = call i32 @kfree(%struct.acx_energy_detection* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_energy_detection* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_energy_detection*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_energy_detection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
