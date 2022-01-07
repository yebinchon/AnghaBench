; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_inconnection_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_inconnection_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl1271_acx_inconnection_sta = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"acx set inconnaction sta %pM\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ACX_UPDATE_INCONNECTION_STA_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"acx set inconnaction sta failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wl1271_acx_inconnection_sta*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.wl1271_acx_inconnection_sta* null, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %8 = load i32, i32* @DEBUG_ACX, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl1271_acx_inconnection_sta* @kzalloc(i32 4, i32 %11)
  store %struct.wl1271_acx_inconnection_sta* %12, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %13 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %14 = icmp ne %struct.wl1271_acx_inconnection_sta* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %20 = getelementptr inbounds %struct.wl1271_acx_inconnection_sta, %struct.wl1271_acx_inconnection_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %26 = load i32, i32* @ACX_UPDATE_INCONNECTION_STA_LIST, align 4
  %27 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %28 = call i32 @wl1271_cmd_configure(%struct.wl1271* %25, i32 %26, %struct.wl1271_acx_inconnection_sta* %27, i32 4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %6, align 8
  %37 = call i32 @kfree(%struct.wl1271_acx_inconnection_sta* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32*) #1

declare dso_local %struct.wl1271_acx_inconnection_sta* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_inconnection_sta*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_inconnection_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
