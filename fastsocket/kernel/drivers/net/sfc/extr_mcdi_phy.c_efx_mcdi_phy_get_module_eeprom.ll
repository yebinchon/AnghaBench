; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@MC_CMD_GET_PHY_MEDIA_INFO_OUT_LENMAX = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_MEDIA_INFO_IN_LEN = common dso_local global i32 0, align 4
@SFP_PAGE_SIZE = common dso_local global i32 0, align 4
@SFP_NUM_PAGES = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@GET_PHY_MEDIA_INFO_IN_PAGE = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_MEDIA_INFO = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_MEDIA_INFO_OUT_DATA_OFST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GET_PHY_MEDIA_INFO_OUT_DATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)* @efx_mcdi_phy_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_get_module_eeprom(%struct.efx_nic* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* @MC_CMD_GET_PHY_MEDIA_INFO_OUT_LENMAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @MC_CMD_GET_PHY_MEDIA_INFO_IN_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %18, align 8
  %31 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %32 = load i32, i32* @SFP_NUM_PAGES, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUILD_BUG_ON(i32 %36)
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %42 = urem i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %47 = udiv i32 %45, %46
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %102, %3
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @SFP_NUM_PAGES, align 4
  %54 = icmp ult i32 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %122

57:                                               ; preds = %55
  %58 = load i32, i32* @GET_PHY_MEDIA_INFO_IN_PAGE, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @MCDI_SET_DWORD(i32* %26, i32 %58, i32 %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %62 = load i32, i32* @MC_CMD_GET_PHY_MEDIA_INFO, align 4
  %63 = mul nuw i64 4, %25
  %64 = trunc i64 %63 to i32
  %65 = mul nuw i64 4, %21
  %66 = trunc i64 %65 to i32
  %67 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %61, i32 %62, i32* %26, i32 %64, i32* %23, i32 %66, i64* %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

72:                                               ; preds = %57
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @MC_CMD_GET_PHY_MEDIA_INFO_OUT_DATA_OFST, align 4
  %75 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %76 = add i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

82:                                               ; preds = %72
  %83 = load i32, i32* @GET_PHY_MEDIA_INFO_OUT_DATALEN, align 4
  %84 = call i32 @MCDI_DWORD(i32* %23, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

91:                                               ; preds = %82
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %14, align 4
  br label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %13, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %16, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %23, i64 %106
  %108 = load i32, i32* @MC_CMD_GET_PHY_MEDIA_INFO_OUT_DATA_OFST, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @memcpy(i32* %104, i32* %110, i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %18, align 8
  store i32 0, i32* %16, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %48

122:                                              ; preds = %55
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

123:                                              ; preds = %122, %88, %79, %70
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i64*) #2

declare dso_local i32 @MCDI_DWORD(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
