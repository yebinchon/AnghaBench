; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.efx_mcdi_phy_data* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.efx_mcdi_phy_data = type { i32, i32, i32, i32, i32, i32, i32 }

@MC_CMD_GET_LINK_OUT_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC_CMD_GET_LINK_IN_LEN = common dso_local global i64 0, align 8
@MC_CMD_GET_LINK = common dso_local global i32 0, align 4
@MC_CMD_MMD_CLAUSE22 = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@GET_LINK_OUT_CAP = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_AN_LBN = common dso_local global i32 0, align 4
@LOOPBACK_NONE = common dso_local global i32 0, align 4
@MC_CMD_LOOPBACK_NONE = common dso_local global i32 0, align 4
@LOOPBACK_DATA = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_DATA = common dso_local global i64 0, align 8
@LOOPBACK_GMAC = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_GMAC = common dso_local global i64 0, align 8
@LOOPBACK_XGMII = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XGMII = common dso_local global i64 0, align 8
@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XGXS = common dso_local global i64 0, align 8
@LOOPBACK_XAUI = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XAUI = common dso_local global i64 0, align 8
@LOOPBACK_GMII = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_GMII = common dso_local global i64 0, align 8
@LOOPBACK_SGMII = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_SGMII = common dso_local global i64 0, align 8
@LOOPBACK_XGBR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XGBR = common dso_local global i64 0, align 8
@LOOPBACK_XFI = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XFI = common dso_local global i64 0, align 8
@LOOPBACK_XAUI_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XAUI_FAR = common dso_local global i64 0, align 8
@LOOPBACK_GMII_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_GMII_FAR = common dso_local global i64 0, align 8
@LOOPBACK_SGMII_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_SGMII_FAR = common dso_local global i64 0, align 8
@LOOPBACK_XFI_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XFI_FAR = common dso_local global i64 0, align 8
@LOOPBACK_GPHY = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_GPHY = common dso_local global i64 0, align 8
@LOOPBACK_PHYXS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_PHYXS = common dso_local global i64 0, align 8
@LOOPBACK_PCS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_PCS = common dso_local global i64 0, align 8
@LOOPBACK_PMAPMD = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_PMAPMD = common dso_local global i64 0, align 8
@LOOPBACK_XPORT = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XPORT = common dso_local global i64 0, align 8
@LOOPBACK_XGMII_WS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XGMII_WS = common dso_local global i64 0, align 8
@LOOPBACK_XAUI_WS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XAUI_WS = common dso_local global i64 0, align 8
@LOOPBACK_XAUI_WS_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XAUI_WS_FAR = common dso_local global i64 0, align 8
@LOOPBACK_XAUI_WS_NEAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XAUI_WS_NEAR = common dso_local global i64 0, align 8
@LOOPBACK_GMII_WS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_GMII_WS = common dso_local global i64 0, align 8
@LOOPBACK_XFI_WS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XFI_WS = common dso_local global i64 0, align 8
@LOOPBACK_XFI_WS_FAR = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_XFI_WS_FAR = common dso_local global i64 0, align 8
@LOOPBACK_PHYXS_WS = common dso_local global i64 0, align 8
@MC_CMD_LOOPBACK_PHYXS_WS = common dso_local global i64 0, align 8
@GET_LINK_OUT_LINK_SPEED = common dso_local global i32 0, align 4
@GET_LINK_OUT_FLAGS = common dso_local global i32 0, align 4
@GET_LINK_OUT_FCNTL = common dso_local global i32 0, align 4
@EFX_FC_RX = common dso_local global i32 0, align 4
@EFX_FC_TX = common dso_local global i32 0, align 4
@EFX_FC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_phy_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %10 = load i32, i32* @MC_CMD_GET_LINK_OUT_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.efx_mcdi_phy_data* @kzalloc(i32 28, i32 %14)
  store %struct.efx_mcdi_phy_data* %15, %struct.efx_mcdi_phy_data** %4, align 8
  %16 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %17 = icmp eq %struct.efx_mcdi_phy_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %315

21:                                               ; preds = %1
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %24 = call i32 @efx_mcdi_get_phy_cfg(%struct.efx_nic* %22, %struct.efx_mcdi_phy_data* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %311

28:                                               ; preds = %21
  %29 = load i64, i64* @MC_CMD_GET_LINK_IN_LEN, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = load i32, i32* @MC_CMD_GET_LINK, align 4
  %35 = mul nuw i64 4, %11
  %36 = trunc i64 %35 to i32
  %37 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %33, i32 %34, i32* null, i32 0, i32* %13, i32 %36, i32* null)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %311

41:                                               ; preds = %28
  %42 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 7
  store %struct.efx_mcdi_phy_data* %42, %struct.efx_mcdi_phy_data** %44, align 8
  %45 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %46 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %51 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %56 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %59 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %62 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MC_CMD_MMD_CLAUSE22, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %75 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MC_CMD_MMD_CLAUSE22, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %41
  %82 = load i32, i32* @MDIO_SUPPORTS_C22, align 4
  %83 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %41
  %89 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %90 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MC_CMD_MMD_CLAUSE22, align 4
  %93 = shl i32 1, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %88
  %98 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %99 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %102 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %88
  %107 = load i32, i32* @GET_LINK_OUT_CAP, align 4
  %108 = call i32 @MCDI_DWORD(i32* %13, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %116 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @mcdi_to_ethtool_cap(i32 %117, i32 %118)
  %120 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %121 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  br label %126

122:                                              ; preds = %106
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %125 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %114
  %127 = load i32, i32* @LOOPBACK_NONE, align 4
  %128 = load i32, i32* @MC_CMD_LOOPBACK_NONE, align 4
  %129 = icmp ne i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUILD_BUG_ON(i32 %130)
  %132 = load i64, i64* @LOOPBACK_DATA, align 8
  %133 = load i64, i64* @MC_CMD_LOOPBACK_DATA, align 8
  %134 = icmp ne i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @BUILD_BUG_ON(i32 %135)
  %137 = load i64, i64* @LOOPBACK_GMAC, align 8
  %138 = load i64, i64* @MC_CMD_LOOPBACK_GMAC, align 8
  %139 = icmp ne i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUILD_BUG_ON(i32 %140)
  %142 = load i64, i64* @LOOPBACK_XGMII, align 8
  %143 = load i64, i64* @MC_CMD_LOOPBACK_XGMII, align 8
  %144 = icmp ne i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @BUILD_BUG_ON(i32 %145)
  %147 = load i64, i64* @LOOPBACK_XGXS, align 8
  %148 = load i64, i64* @MC_CMD_LOOPBACK_XGXS, align 8
  %149 = icmp ne i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @BUILD_BUG_ON(i32 %150)
  %152 = load i64, i64* @LOOPBACK_XAUI, align 8
  %153 = load i64, i64* @MC_CMD_LOOPBACK_XAUI, align 8
  %154 = icmp ne i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @BUILD_BUG_ON(i32 %155)
  %157 = load i64, i64* @LOOPBACK_GMII, align 8
  %158 = load i64, i64* @MC_CMD_LOOPBACK_GMII, align 8
  %159 = icmp ne i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUILD_BUG_ON(i32 %160)
  %162 = load i64, i64* @LOOPBACK_SGMII, align 8
  %163 = load i64, i64* @MC_CMD_LOOPBACK_SGMII, align 8
  %164 = icmp ne i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @BUILD_BUG_ON(i32 %165)
  %167 = load i64, i64* @LOOPBACK_XGBR, align 8
  %168 = load i64, i64* @MC_CMD_LOOPBACK_XGBR, align 8
  %169 = icmp ne i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @BUILD_BUG_ON(i32 %170)
  %172 = load i64, i64* @LOOPBACK_XFI, align 8
  %173 = load i64, i64* @MC_CMD_LOOPBACK_XFI, align 8
  %174 = icmp ne i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @BUILD_BUG_ON(i32 %175)
  %177 = load i64, i64* @LOOPBACK_XAUI_FAR, align 8
  %178 = load i64, i64* @MC_CMD_LOOPBACK_XAUI_FAR, align 8
  %179 = icmp ne i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @BUILD_BUG_ON(i32 %180)
  %182 = load i64, i64* @LOOPBACK_GMII_FAR, align 8
  %183 = load i64, i64* @MC_CMD_LOOPBACK_GMII_FAR, align 8
  %184 = icmp ne i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @BUILD_BUG_ON(i32 %185)
  %187 = load i64, i64* @LOOPBACK_SGMII_FAR, align 8
  %188 = load i64, i64* @MC_CMD_LOOPBACK_SGMII_FAR, align 8
  %189 = icmp ne i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @BUILD_BUG_ON(i32 %190)
  %192 = load i64, i64* @LOOPBACK_XFI_FAR, align 8
  %193 = load i64, i64* @MC_CMD_LOOPBACK_XFI_FAR, align 8
  %194 = icmp ne i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @BUILD_BUG_ON(i32 %195)
  %197 = load i64, i64* @LOOPBACK_GPHY, align 8
  %198 = load i64, i64* @MC_CMD_LOOPBACK_GPHY, align 8
  %199 = icmp ne i64 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @BUILD_BUG_ON(i32 %200)
  %202 = load i64, i64* @LOOPBACK_PHYXS, align 8
  %203 = load i64, i64* @MC_CMD_LOOPBACK_PHYXS, align 8
  %204 = icmp ne i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @BUILD_BUG_ON(i32 %205)
  %207 = load i64, i64* @LOOPBACK_PCS, align 8
  %208 = load i64, i64* @MC_CMD_LOOPBACK_PCS, align 8
  %209 = icmp ne i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @BUILD_BUG_ON(i32 %210)
  %212 = load i64, i64* @LOOPBACK_PMAPMD, align 8
  %213 = load i64, i64* @MC_CMD_LOOPBACK_PMAPMD, align 8
  %214 = icmp ne i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @BUILD_BUG_ON(i32 %215)
  %217 = load i64, i64* @LOOPBACK_XPORT, align 8
  %218 = load i64, i64* @MC_CMD_LOOPBACK_XPORT, align 8
  %219 = icmp ne i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @BUILD_BUG_ON(i32 %220)
  %222 = load i64, i64* @LOOPBACK_XGMII_WS, align 8
  %223 = load i64, i64* @MC_CMD_LOOPBACK_XGMII_WS, align 8
  %224 = icmp ne i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @BUILD_BUG_ON(i32 %225)
  %227 = load i64, i64* @LOOPBACK_XAUI_WS, align 8
  %228 = load i64, i64* @MC_CMD_LOOPBACK_XAUI_WS, align 8
  %229 = icmp ne i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @BUILD_BUG_ON(i32 %230)
  %232 = load i64, i64* @LOOPBACK_XAUI_WS_FAR, align 8
  %233 = load i64, i64* @MC_CMD_LOOPBACK_XAUI_WS_FAR, align 8
  %234 = icmp ne i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @BUILD_BUG_ON(i32 %235)
  %237 = load i64, i64* @LOOPBACK_XAUI_WS_NEAR, align 8
  %238 = load i64, i64* @MC_CMD_LOOPBACK_XAUI_WS_NEAR, align 8
  %239 = icmp ne i64 %237, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @BUILD_BUG_ON(i32 %240)
  %242 = load i64, i64* @LOOPBACK_GMII_WS, align 8
  %243 = load i64, i64* @MC_CMD_LOOPBACK_GMII_WS, align 8
  %244 = icmp ne i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @BUILD_BUG_ON(i32 %245)
  %247 = load i64, i64* @LOOPBACK_XFI_WS, align 8
  %248 = load i64, i64* @MC_CMD_LOOPBACK_XFI_WS, align 8
  %249 = icmp ne i64 %247, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 @BUILD_BUG_ON(i32 %250)
  %252 = load i64, i64* @LOOPBACK_XFI_WS_FAR, align 8
  %253 = load i64, i64* @MC_CMD_LOOPBACK_XFI_WS_FAR, align 8
  %254 = icmp ne i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @BUILD_BUG_ON(i32 %255)
  %257 = load i64, i64* @LOOPBACK_PHYXS_WS, align 8
  %258 = load i64, i64* @MC_CMD_LOOPBACK_PHYXS_WS, align 8
  %259 = icmp ne i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @BUILD_BUG_ON(i32 %260)
  %262 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %263 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %264 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %263, i32 0, i32 0
  %265 = call i32 @efx_mcdi_loopback_modes(%struct.efx_nic* %262, i32* %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %126
  br label %311

269:                                              ; preds = %126
  %270 = load i32, i32* @LOOPBACK_NONE, align 4
  %271 = shl i32 1, %270
  %272 = xor i32 %271, -1
  %273 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %274 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %278 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %279 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %278, i32 0, i32 2
  %280 = load i32, i32* @GET_LINK_OUT_LINK_SPEED, align 4
  %281 = call i32 @MCDI_DWORD(i32* %13, i32 %280)
  %282 = load i32, i32* @GET_LINK_OUT_FLAGS, align 4
  %283 = call i32 @MCDI_DWORD(i32* %13, i32 %282)
  %284 = load i32, i32* @GET_LINK_OUT_FCNTL, align 4
  %285 = call i32 @MCDI_DWORD(i32* %13, i32 %284)
  %286 = call i32 @efx_mcdi_phy_decode_link(%struct.efx_nic* %277, i32* %279, i32 %281, i32 %283, i32 %285)
  %287 = load i32, i32* @EFX_FC_RX, align 4
  %288 = load i32, i32* @EFX_FC_TX, align 4
  %289 = or i32 %287, %288
  %290 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %291 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %293 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %296 = shl i32 1, %295
  %297 = and i32 %294, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %269
  %300 = load i32, i32* @EFX_FC_AUTO, align 4
  %301 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %302 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %299, %269
  %306 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %307 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %308 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @efx_link_set_wanted_fc(%struct.efx_nic* %306, i32 %309)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %315

311:                                              ; preds = %268, %40, %27
  %312 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %313 = call i32 @kfree(%struct.efx_mcdi_phy_data* %312)
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %315

315:                                              ; preds = %311, %305, %18
  %316 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %316)
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.efx_mcdi_phy_data* @kzalloc(i32, i32) #2

declare dso_local i32 @efx_mcdi_get_phy_cfg(%struct.efx_nic*, %struct.efx_mcdi_phy_data*) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @MCDI_DWORD(i32*, i32) #2

declare dso_local i32 @mcdi_to_ethtool_cap(i32, i32) #2

declare dso_local i32 @efx_mcdi_loopback_modes(%struct.efx_nic*, i32*) #2

declare dso_local i32 @efx_mcdi_phy_decode_link(%struct.efx_nic*, i32*, i32, i32, i32) #2

declare dso_local i32 @efx_link_set_wanted_fc(%struct.efx_nic*, i32) #2

declare dso_local i32 @kfree(%struct.efx_mcdi_phy_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
