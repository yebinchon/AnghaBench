; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_set_addrmatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_set_addrmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"wl%d: brcms_b_set_addrmatch\0A\00", align 1
@rcm_ctl = common dso_local global i32 0, align 4
@RCM_INC_DATA = common dso_local global i32 0, align 4
@rcm_mat_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32, i32*)* @brcms_b_set_addrmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_set_addrmatch(%struct.brcms_hardware* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 1
  %13 = load %struct.bcma_device*, %struct.bcma_device** %12, align 8
  store %struct.bcma_device* %13, %struct.bcma_device** %7, align 8
  %14 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @brcms_dbg_rx(%struct.bcma_device* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %37, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %44 = load i32, i32* @rcm_ctl, align 4
  %45 = call i32 @D11REGOFFS(i32 %44)
  %46 = load i32, i32* @RCM_INC_DATA, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @bcma_write16(%struct.bcma_device* %43, i32 %45, i32 %48)
  %50 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %51 = load i32, i32* @rcm_mat_data, align 4
  %52 = call i32 @D11REGOFFS(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bcma_write16(%struct.bcma_device* %50, i32 %52, i32 %53)
  %55 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %56 = load i32, i32* @rcm_mat_data, align 4
  %57 = call i32 @D11REGOFFS(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @bcma_write16(%struct.bcma_device* %55, i32 %57, i32 %58)
  %60 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %61 = load i32, i32* @rcm_mat_data, align 4
  %62 = call i32 @D11REGOFFS(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @bcma_write16(%struct.bcma_device* %60, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @brcms_dbg_rx(%struct.bcma_device*, i8*, i32) #1

declare dso_local i32 @bcma_write16(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
