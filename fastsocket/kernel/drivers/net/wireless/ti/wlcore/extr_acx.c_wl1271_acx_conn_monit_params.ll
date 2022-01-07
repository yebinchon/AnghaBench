; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_conn_monit_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_conn_monit_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_conn_monit_params = type { i8*, i8*, i32 }

@ACX_CONN_MONIT_DISABLE_VALUE = common dso_local global i32 0, align 4
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"acx connection monitor parameters: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_CONN_MONIT_PARAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to set connection monitor parameters: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_conn_monit_params(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acx_conn_monit_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @ACX_CONN_MONIT_DISABLE_VALUE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ACX_CONN_MONIT_DISABLE_VALUE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.acx_conn_monit_params* @kzalloc(i32 24, i32 %19)
  store %struct.acx_conn_monit_params* %20, %struct.acx_conn_monit_params** %7, align 8
  %21 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %22 = icmp ne %struct.acx_conn_monit_params* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %42 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %45 = getelementptr inbounds %struct.acx_conn_monit_params, %struct.acx_conn_monit_params* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %49 = getelementptr inbounds %struct.acx_conn_monit_params, %struct.acx_conn_monit_params* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %53 = getelementptr inbounds %struct.acx_conn_monit_params, %struct.acx_conn_monit_params* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = load i32, i32* @ACX_CONN_MONIT_PARAMS, align 4
  %56 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %57 = call i32 @wl1271_cmd_configure(%struct.wl1271* %54, i32 %55, %struct.acx_conn_monit_params* %56, i32 24)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @wl1271_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %64

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %60, %23
  %65 = load %struct.acx_conn_monit_params*, %struct.acx_conn_monit_params** %7, align 8
  %66 = call i32 @kfree(%struct.acx_conn_monit_params* %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*) #1

declare dso_local %struct.acx_conn_monit_params* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_conn_monit_params*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_conn_monit_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
