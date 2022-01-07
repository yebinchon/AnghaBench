; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_tid_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_tid_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_tid_config = type { i8**, i8*, i8*, i8*, i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"acx tid config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_TID_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Setting of tid config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_tid_cfg(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.wl1271*, align 8
  %11 = alloca %struct.wl12xx_vif*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.acx_tid_config*, align 8
  %20 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %10, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @DEBUG_ACX, align 4
  %22 = call i32 @wl1271_debug(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.acx_tid_config* @kzalloc(i32 56, i32 %23)
  store %struct.acx_tid_config* %24, %struct.acx_tid_config** %19, align 8
  %25 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %26 = icmp ne %struct.acx_tid_config* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %20, align 4
  br label %73

30:                                               ; preds = %9
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %35 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %38 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %41 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %44 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %47 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %50 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %54 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* %18, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %60 = getelementptr inbounds %struct.acx_tid_config, %struct.acx_tid_config* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %64 = load i32, i32* @ACX_TID_CFG, align 4
  %65 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %66 = call i32 @wl1271_cmd_configure(%struct.wl1271* %63, i32 %64, %struct.acx_tid_config* %65, i32 56)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %30
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @wl1271_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %30
  br label %73

73:                                               ; preds = %72, %69, %27
  %74 = load %struct.acx_tid_config*, %struct.acx_tid_config** %19, align 8
  %75 = call i32 @kfree(%struct.acx_tid_config* %74)
  %76 = load i32, i32* %20, align 4
  ret i32 %76
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_tid_config* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_tid_config*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_tid_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
