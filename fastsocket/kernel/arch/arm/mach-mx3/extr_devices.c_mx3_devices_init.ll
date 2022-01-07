; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_devices.c_mx3_devices_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_devices.c_mx3_devices_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@MX31_NFC_BASE_ADDR = common dso_local global i8* null, align 8
@mxc_nand_resources = common dso_local global %struct.TYPE_6__* null, align 8
@mxc_rnga_device = common dso_local global i32 0, align 4
@MX35_NFC_BASE_ADDR = common dso_local global i8* null, align 8
@MX35_OTG_BASE_ADDR = common dso_local global i8* null, align 8
@otg_resources = common dso_local global %struct.TYPE_4__* null, align 8
@MXC_INT_USBOTG = common dso_local global i8* null, align 8
@mxc_usbh1_resources = common dso_local global %struct.TYPE_5__* null, align 8
@MXC_INT_USBHS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mx3_devices_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_devices_init() #0 {
  %1 = call i64 (...) @cpu_is_mx31()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i8*, i8** @MX31_NFC_BASE_ADDR, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxc_nand_resources, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %4, i8** %7, align 8
  %8 = load i8*, i8** @MX31_NFC_BASE_ADDR, align 8
  %9 = getelementptr i8, i8* %8, i64 4095
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxc_nand_resources, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %9, i8** %12, align 8
  %13 = call i32 @mxc_register_device(i32* @mxc_rnga_device, i32* null)
  br label %14

14:                                               ; preds = %3, %0
  %15 = call i64 (...) @cpu_is_mx35()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load i8*, i8** @MX35_NFC_BASE_ADDR, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxc_nand_resources, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** @MX35_NFC_BASE_ADDR, align 8
  %23 = getelementptr i8, i8* %22, i64 4095
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxc_nand_resources, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** @MX35_OTG_BASE_ADDR, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @otg_resources, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @MX35_OTG_BASE_ADDR, align 8
  %32 = getelementptr i8, i8* %31, i64 511
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @otg_resources, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @MXC_INT_USBOTG, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @otg_resources, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @MXC_INT_USBOTG, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @otg_resources, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @MX35_OTG_BASE_ADDR, align 8
  %45 = getelementptr i8, i8* %44, i64 1024
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mxc_usbh1_resources, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @MX35_OTG_BASE_ADDR, align 8
  %50 = getelementptr i8, i8* %49, i64 1535
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mxc_usbh1_resources, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @MXC_INT_USBHS, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mxc_usbh1_resources, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @MXC_INT_USBHS, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mxc_usbh1_resources, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  br label %62

62:                                               ; preds = %17, %14
  ret i32 0
}

declare dso_local i64 @cpu_is_mx31(...) #1

declare dso_local i32 @mxc_register_device(i32*, i32*) #1

declare dso_local i64 @cpu_is_mx35(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
