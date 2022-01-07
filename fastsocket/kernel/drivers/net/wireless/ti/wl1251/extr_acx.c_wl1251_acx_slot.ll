; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_slot = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"acx slot\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STATION_WONE_INDEX = common dso_local global i32 0, align 4
@ACX_SLOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set slot time: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_slot(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acx_slot*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_slot* @kzalloc(i32 8, i32 %9)
  store %struct.acx_slot* %10, %struct.acx_slot** %5, align 8
  %11 = load %struct.acx_slot*, %struct.acx_slot** %5, align 8
  %12 = icmp ne %struct.acx_slot* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* @STATION_WONE_INDEX, align 4
  %18 = load %struct.acx_slot*, %struct.acx_slot** %5, align 8
  %19 = getelementptr inbounds %struct.acx_slot, %struct.acx_slot* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.acx_slot*, %struct.acx_slot** %5, align 8
  %22 = getelementptr inbounds %struct.acx_slot, %struct.acx_slot* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = load i32, i32* @ACX_SLOT, align 4
  %25 = load %struct.acx_slot*, %struct.acx_slot** %5, align 8
  %26 = call i32 @wl1251_cmd_configure(%struct.wl1251* %23, i32 %24, %struct.acx_slot* %25, i32 8)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %29, %13
  %34 = load %struct.acx_slot*, %struct.acx_slot** %5, align 8
  %35 = call i32 @kfree(%struct.acx_slot* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_slot* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_slot*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
