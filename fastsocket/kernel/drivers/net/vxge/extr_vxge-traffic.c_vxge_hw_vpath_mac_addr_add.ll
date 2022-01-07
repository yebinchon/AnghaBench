; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_vpath_handle = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_HANDLE = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_ADD_ENTRY = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_mac_addr_add(%struct.__vxge_hw_vpath_handle* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @ETH_ALEN, align 8
  %14 = load i64, i64* @ETH_ALEN, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %5, align 8
  %17 = icmp eq %struct.__vxge_hw_vpath_handle* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @VXGE_HW_ERR_INVALID_HANDLE, align 4
  store i32 %19, i32* %12, align 4
  br label %63

20:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ETH_ALEN, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %26, 8
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 8
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %25
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %21

45:                                               ; preds = %21
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %50 [
    i32 130, label %47
    i32 129, label %48
    i32 128, label %49
  ]

47:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  br label %51

48:                                               ; preds = %45
  store i64 1, i64* %9, align 8
  br label %51

49:                                               ; preds = %45
  store i64 2, i64* %9, align 8
  br label %51

50:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %50, %49, %48, %47
  %52 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %5, align 8
  %53 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_ADD_ENTRY, align 4
  %54 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_DA_MAC_ADDR(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MASK(i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MODE(i64 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @__vxge_hw_vpath_rts_table_set(%struct.__vxge_hw_vpath_handle* %52, i32 %53, i32 %54, i32 0, i32 %56, i32 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %51, %18
  %64 = load i32, i32* %12, align 4
  ret i32 %64
}

declare dso_local i32 @__vxge_hw_vpath_rts_table_set(%struct.__vxge_hw_vpath_handle*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_DA_MAC_ADDR(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MASK(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
