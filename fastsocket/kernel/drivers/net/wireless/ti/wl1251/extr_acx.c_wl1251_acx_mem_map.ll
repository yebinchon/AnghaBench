; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_header = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"acx mem map\00", align 1
@ACX_MEM_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_mem_map(%struct.wl1251* %0, %struct.acx_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.acx_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.acx_header* %1, %struct.acx_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1251_debug(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %12 = load i32, i32* @ACX_MEM_MAP, align 4
  %13 = load %struct.acx_header*, %struct.acx_header** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %11, i32 %12, %struct.acx_header* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
