; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_set_ex_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_set_ex_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32*, %struct.TYPE_8__*, %struct.sas_rphy*, %struct.expander_device }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.sas_ha_struct* }
%struct.TYPE_7__ = type { i32 }
%struct.sas_ha_struct = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.expander_device = type { %struct.ex_phy* }
%struct.ex_phy = type { i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.smp_resp = type { i32, %struct.discover_resp }
%struct.discover_resp = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SAS_HA_ATA_EH_ACTIVE = common dso_local global i32 0, align 4
@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@PHY_EMPTY = common dso_local global i64 0, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"stp pending\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"host+target\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"smp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"%sex %016llx phy%02d:%c:%X attached: %016llx (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ata: \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i32, i8*)* @sas_set_ex_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_set_ex_phy(%struct.domain_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.smp_resp*, align 8
  %12 = alloca %struct.discover_resp*, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca %struct.expander_device*, align 8
  %15 = alloca %struct.ex_phy*, align 8
  %16 = alloca %struct.sas_rphy*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.smp_resp*
  store %struct.smp_resp* %25, %struct.smp_resp** %11, align 8
  %26 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %27 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %26, i32 0, i32 1
  store %struct.discover_resp* %27, %struct.discover_resp** %12, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %31, align 8
  store %struct.sas_ha_struct* %32, %struct.sas_ha_struct** %13, align 8
  %33 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 3
  store %struct.expander_device* %34, %struct.expander_device** %14, align 8
  %35 = load %struct.expander_device*, %struct.expander_device** %14, align 8
  %36 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %35, i32 0, i32 0
  %37 = load %struct.ex_phy*, %struct.ex_phy** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %37, i64 %39
  store %struct.ex_phy* %40, %struct.ex_phy** %15, align 8
  %41 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 2
  %43 = load %struct.sas_rphy*, %struct.sas_rphy** %42, align 8
  store %struct.sas_rphy* %43, %struct.sas_rphy** %16, align 8
  %44 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %45 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %44, i32 0, i32 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %3
  %53 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %54 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %55 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %54, i32 0, i32 0
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = call i64 @WARN_ON_ONCE(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %19, align 4
  br label %424

60:                                               ; preds = %52
  %61 = load %struct.sas_rphy*, %struct.sas_rphy** %16, align 8
  %62 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.TYPE_10__* @sas_phy_alloc(i32* %62, i32 %63)
  %65 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %66 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %65, i32 0, i32 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %68 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %67, i32 0, i32 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  br label %74

74:                                               ; preds = %60, %3
  %75 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %76 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %82 [
    i32 128, label %78
    i32 129, label %86
  ]

78:                                               ; preds = %74
  %79 = load i64, i64* @PHY_VACANT, align 8
  %80 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %81 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %90

82:                                               ; preds = %74
  %83 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %84 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %85 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %90

86:                                               ; preds = %74
  %87 = load i64, i64* @PHY_EMPTY, align 8
  %88 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %89 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %82, %78
  %91 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %92 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %7, align 4
  %94 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %95 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %98 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %101 = call i32 @memcpy(i32* %23, i32* %99, i32 %100)
  %102 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %103 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PHY_VACANT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %90
  %108 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %109 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %112 = call i32 @memset(i32* %110, i32 0, i32 %111)
  %113 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %114 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %113, i32 0, i32 1
  store i32 132, i32* %114, align 8
  %115 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %116 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %117 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %116, i32 0, i32 0
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %123 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  br label %313

124:                                              ; preds = %107
  br label %329

125:                                              ; preds = %90
  %126 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %127 = call i32 @to_dev_type(%struct.discover_resp* %126)
  %128 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %129 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %131 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %132 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %131, i32 0, i32 0
  %133 = call i64 @test_bit(i32 %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %329

136:                                              ; preds = %125
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %139 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %141 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %144 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %146 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %149 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %148, i32 0, i32 15
  store i32 %147, i32* %149, align 8
  %150 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %151 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %154 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %153, i32 0, i32 14
  store i64 %152, i64* %154, align 8
  %155 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %156 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %159 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %158, i32 0, i32 13
  store i32 %157, i32* %159, align 8
  %160 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %161 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 1
  %164 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %165 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %167 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 %168, 1
  %170 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %171 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %173 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 132
  br i1 %175, label %183, label %176

176:                                              ; preds = %136
  %177 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %178 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* @SAS_LINK_RATE_1_5_GBPS, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %176, %136
  %184 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %185 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %188 = call i32 @memset(i32* %186, i32 0, i32 %187)
  br label %198

189:                                              ; preds = %176
  %190 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %191 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %194 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %193, i32 0, i32 13
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %197 = call i32 @memcpy(i32* %192, i32* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %183
  %199 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %200 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %203 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %202, i32 0, i32 12
  store i32 %201, i32* %203, align 4
  %204 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %205 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %208 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %207, i32 0, i32 11
  store i32 %206, i32* %208, align 8
  %209 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %210 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %213 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %212, i32 0, i32 10
  store i32 %211, i32* %213, align 4
  %214 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %215 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %218 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %217, i32 0, i32 9
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %220 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %219, i32 0, i32 6
  store i32 -1, i32* %220, align 4
  %221 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %222 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %221, i32 0, i32 7
  %223 = load i32*, i32** %222, align 8
  %224 = call i64 @SAS_ADDR(i32* %223)
  %225 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %226 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %225, i32 0, i32 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  store i64 %224, i64* %229, align 8
  %230 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %231 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %234 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %233, i32 0, i32 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  store i32 %232, i32* %237, align 4
  %238 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %239 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %242 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %241, i32 0, i32 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  store i32 %240, i32* %245, align 8
  %246 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %247 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %250 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %249, i32 0, i32 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  store i32 %248, i32* %253, align 4
  %254 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %255 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %198
  %259 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %260 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %265 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %266 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %265, i32 0, i32 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  store i32 %264, i32* %269, align 4
  br label %270

270:                                              ; preds = %263, %258, %198
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %273 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %272, i32 0, i32 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  store i32 %271, i32* %276, align 8
  %277 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %278 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %281 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %280, i32 0, i32 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 4
  store i32 %279, i32* %283, align 4
  %284 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %285 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %288 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %287, i32 0, i32 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  store i32 %286, i32* %290, align 8
  %291 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %292 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %295 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %294, i32 0, i32 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 2
  store i32 %293, i32* %297, align 4
  %298 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %299 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %302 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %301, i32 0, i32 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  store i32 %300, i32* %304, align 8
  %305 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %306 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %310 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %309, i32 0, i32 8
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  store i64 %308, i64* %312, align 8
  br label %313

313:                                              ; preds = %270, %120
  %314 = load i32, i32* %17, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %318 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %317, i32 0, i32 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = call i64 @sas_phy_add(%struct.TYPE_10__* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %324 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %323, i32 0, i32 8
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %324, align 8
  %326 = call i32 @sas_phy_free(%struct.TYPE_10__* %325)
  store i32 1, i32* %19, align 4
  br label %424

327:                                              ; preds = %316
  br label %328

328:                                              ; preds = %327, %313
  br label %329

329:                                              ; preds = %328, %135, %124
  %330 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %331 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  switch i32 %332, label %358 [
    i32 130, label %333
    i32 132, label %334
    i32 131, label %335
    i32 134, label %357
    i32 133, label %357
  ]

333:                                              ; preds = %329
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %359

334:                                              ; preds = %329
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %359

335:                                              ; preds = %329
  %336 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %337 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %342 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %347

346:                                              ; preds = %340
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %347

347:                                              ; preds = %346, %345
  br label %356

348:                                              ; preds = %335
  %349 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %350 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %355

354:                                              ; preds = %348
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %355

355:                                              ; preds = %354, %353
  br label %356

356:                                              ; preds = %355, %347
  br label %359

357:                                              ; preds = %329, %329
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  br label %359

358:                                              ; preds = %329
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %359

359:                                              ; preds = %358, %357, %356, %334, %333
  %360 = load i32, i32* %17, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %381, label %362

362:                                              ; preds = %359
  %363 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %364 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %381, label %368

368:                                              ; preds = %362
  %369 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %370 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %8, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %381, label %374

374:                                              ; preds = %368
  %375 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %376 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %375, i32 0, i32 7
  %377 = load i32*, i32** %376, align 8
  %378 = call i64 @SAS_ADDR(i32* %377)
  %379 = call i64 @SAS_ADDR(i32* %23)
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %374, %368, %362, %359
  br label %383

382:                                              ; preds = %374
  store i32 1, i32* %19, align 4
  br label %424

383:                                              ; preds = %381
  %384 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %385 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %386 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %385, i32 0, i32 0
  %387 = call i64 @test_bit(i32 %384, i32* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %383
  %390 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %391 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %392 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %391, i32 0, i32 1
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = call i32 @set_bit(i32 %390, i32* %395)
  br label %397

397:                                              ; preds = %389, %383
  %398 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %399 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %400 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %399, i32 0, i32 0
  %401 = call i64 @test_bit(i32 %398, i32* %400)
  %402 = icmp ne i64 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %405 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %406 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = call i64 @SAS_ADDR(i32* %407)
  %409 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %410 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %413 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %414 = call i32 @sas_route_char(%struct.domain_device* %412, %struct.ex_phy* %413)
  %415 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %416 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %419 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %418, i32 0, i32 7
  %420 = load i32*, i32** %419, align 8
  %421 = call i64 @SAS_ADDR(i32* %420)
  %422 = load i8*, i8** %18, align 8
  %423 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %404, i64 %408, i32 %411, i32 %414, i32 %417, i64 %421, i8* %422)
  store i32 0, i32* %19, align 4
  br label %424

424:                                              ; preds = %397, %382, %322, %59
  %425 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %425)
  %426 = load i32, i32* %19, align 4
  switch i32 %426, label %428 [
    i32 0, label %427
    i32 1, label %427
  ]

427:                                              ; preds = %424, %424
  ret void

428:                                              ; preds = %424
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON_ONCE(i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local %struct.TYPE_10__* @sas_phy_alloc(i32*, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @to_dev_type(%struct.discover_resp*) #2

declare dso_local i64 @SAS_ADDR(i32*) #2

declare dso_local i64 @sas_phy_add(%struct.TYPE_10__*) #2

declare dso_local i32 @sas_phy_free(%struct.TYPE_10__*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @SAS_DPRINTK(i8*, i8*, i64, i32, i32, i32, i64, i8*) #2

declare dso_local i32 @sas_route_char(%struct.domain_device*, %struct.ex_phy*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
