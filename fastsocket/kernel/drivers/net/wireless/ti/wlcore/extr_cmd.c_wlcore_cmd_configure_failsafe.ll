; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_configure_failsafe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_configure_failsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.acx_header = type { i8*, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd configure (%d)\00", align 1
@CMD_CONFIGURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CONFIGURE command NOK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_configure_failsafe(%struct.wl1271* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.acx_header*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.acx_header*
  store %struct.acx_header* %15, %struct.acx_header** %12, align 8
  %16 = load i32, i32* @DEBUG_CMD, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @wl1271_debug(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %8, align 8
  %20 = call i8* @cpu_to_le16(i64 %19)
  %21 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %22 = getelementptr inbounds %struct.acx_header, %struct.acx_header* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, 16
  %25 = call i8* @cpu_to_le16(i64 %24)
  %26 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %27 = getelementptr inbounds %struct.acx_header, %struct.acx_header* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %29 = load i32, i32* @CMD_CONFIGURE, align 4
  %30 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @wlcore_cmd_send_failsafe(%struct.wl1271* %28, i32 %29, %struct.acx_header* %30, i64 %31, i32 0, i64 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @wlcore_cmd_send_failsafe(%struct.wl1271*, i32, %struct.acx_header*, i64, i32, i64) #1

declare dso_local i32 @wl1271_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
