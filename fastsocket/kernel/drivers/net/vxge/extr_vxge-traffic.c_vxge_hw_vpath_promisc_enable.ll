; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_promisc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_promisc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_vpath_handle = type { %struct.__vxge_hw_virtualpath* }
%struct.__vxge_hw_virtualpath = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_HANDLE = common dso_local global i32 0, align 4
@VXGE_HW_DEVICE_ACCESS_RIGHT_MRPCIM = common dso_local global i32 0, align 4
@VXGE_HW_RXMAC_VCFG0_UCAST_ALL_ADDR_EN = common dso_local global i32 0, align 4
@VXGE_HW_RXMAC_VCFG0_MCAST_ALL_ADDR_EN = common dso_local global i32 0, align 4
@VXGE_HW_RXMAC_VCFG0_BCAST_EN = common dso_local global i32 0, align 4
@VXGE_HW_RXMAC_VCFG0_ALL_VID_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_promisc_enable(%struct.__vxge_hw_vpath_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.__vxge_hw_virtualpath*, align 8
  %6 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %3, align 8
  %7 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %3, align 8
  %9 = icmp eq %struct.__vxge_hw_vpath_handle* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %3, align 8
  %12 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %11, i32 0, i32 0
  %13 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %12, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @VXGE_HW_ERR_INVALID_HANDLE, align 4
  store i32 %18, i32* %6, align 4
  br label %60

19:                                               ; preds = %10
  %20 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %3, align 8
  %21 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %20, i32 0, i32 0
  %22 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %21, align 8
  store %struct.__vxge_hw_virtualpath* %22, %struct.__vxge_hw_virtualpath** %5, align 8
  %23 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %5, align 8
  %24 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VXGE_HW_DEVICE_ACCESS_RIGHT_MRPCIM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %19
  %34 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %5, align 8
  %35 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @readq(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_UCAST_ALL_ADDR_EN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_UCAST_ALL_ADDR_EN, align 4
  %45 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_MCAST_ALL_ADDR_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_BCAST_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_ALL_VID_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %5, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @writeq(i32 %53, i32* %57)
  br label %59

59:                                               ; preds = %43, %33
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %31
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @writeq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
