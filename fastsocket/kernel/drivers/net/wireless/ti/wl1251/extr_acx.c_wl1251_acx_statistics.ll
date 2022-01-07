; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_statistics = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"acx statistics\00", align 1
@ACX_STATISTICS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"acx statistics failed: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_statistics(%struct.wl1251* %0, %struct.acx_statistics* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.acx_statistics*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.acx_statistics* %1, %struct.acx_statistics** %5, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %10 = load i32, i32* @ACX_STATISTICS, align 4
  %11 = load %struct.acx_statistics*, %struct.acx_statistics** %5, align 8
  %12 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %9, i32 %10, %struct.acx_statistics* %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @wl1251_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_statistics*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
