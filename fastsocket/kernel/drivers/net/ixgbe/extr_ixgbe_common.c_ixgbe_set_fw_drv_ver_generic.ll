; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_fw_drv_ver_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_fw_drv_ver_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_hic_drv_info = type { %struct.TYPE_8__, i64, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@FW_CEM_CMD_DRIVER_INFO = common dso_local global i32 0, align 4
@FW_CEM_CMD_DRIVER_INFO_LEN = common dso_local global i64 0, align 8
@FW_CEM_CMD_RESERVED = common dso_local global i32 0, align 4
@FW_CEM_HDR_LEN = common dso_local global i64 0, align 8
@FW_CEM_MAX_RETRIES = common dso_local global i32 0, align 4
@FW_CEM_RESP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_set_fw_drv_ver_generic(%struct.ixgbe_hw* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ixgbe_hic_drv_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %22 = call i64 %18(%struct.ixgbe_hw.0* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %25, i64* %13, align 8
  br label %99

26:                                               ; preds = %5
  %27 = load i32, i32* @FW_CEM_CMD_DRIVER_INFO, align 4
  %28 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @FW_CEM_CMD_DRIVER_INFO_LEN, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @FW_CEM_CMD_RESERVED, align 4
  %34 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 7
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 6
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 5
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 4
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = bitcast %struct.ixgbe_hic_drv_info* %11 to i8**
  %54 = load i64, i64* @FW_CEM_HDR_LEN, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i64 @ixgbe_calculate_checksum(i8** %53, i64 %58)
  %60 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 1
  store i64 0, i64* %63, align 8
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %86, %26
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @FW_CEM_MAX_RETRIES, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = bitcast %struct.ixgbe_hic_drv_info* %11 to i32*
  %71 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %69, i32* %70, i32 96)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %86

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %11, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FW_CEM_RESP_STATUS_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i64 0, i64* %13, align 8
  br label %85

83:                                               ; preds = %75
  %84 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %84, i64* %13, align 8
  br label %85

85:                                               ; preds = %83, %82
  br label %89

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %64

89:                                               ; preds = %85, %64
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %93, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %96 = bitcast %struct.ixgbe_hw* %95 to %struct.ixgbe_hw.1*
  %97 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %98 = call i32 %94(%struct.ixgbe_hw.1* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %24
  %100 = load i64, i64* %13, align 8
  ret i64 %100
}

declare dso_local i64 @ixgbe_calculate_checksum(i8**, i64) #1

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
