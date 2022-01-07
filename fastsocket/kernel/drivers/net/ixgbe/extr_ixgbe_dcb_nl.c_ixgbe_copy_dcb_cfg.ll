; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_3__, i32, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_dcb_config = type { i64**, i64, %struct.tc_configuration* }
%struct.tc_configuration = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@DCB_TX_CONFIG = common dso_local global i32 0, align 4
@DCB_RX_CONFIG = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@BIT_PG_TX = common dso_local global i32 0, align 4
@BIT_PFC = common dso_local global i32 0, align 4
@BIT_APP_UPCHG = common dso_local global i32 0, align 4
@BIT_PG_RX = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_MAX = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_0 = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_APP_IDTYPE_ETHTYPE = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32)* @ixgbe_copy_dcb_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_copy_dcb_cfg(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_dcb_config*, align 8
  %6 = alloca %struct.ixgbe_dcb_config*, align 8
  %7 = alloca %struct.tc_configuration*, align 8
  %8 = alloca %struct.tc_configuration*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  store %struct.ixgbe_dcb_config* %15, %struct.ixgbe_dcb_config** %5, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 2
  store %struct.ixgbe_dcb_config* %17, %struct.ixgbe_dcb_config** %6, align 8
  store %struct.tc_configuration* null, %struct.tc_configuration** %7, align 8
  store %struct.tc_configuration* null, %struct.tc_configuration** %8, align 8
  %18 = load i32, i32* @DCB_TX_CONFIG, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @DCB_RX_CONFIG, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %348, %2
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %351

27:                                               ; preds = %21
  %28 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %28, i32 0, i32 2
  %30 = load %struct.tc_configuration*, %struct.tc_configuration** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %30, i64 %34
  store %struct.tc_configuration* %35, %struct.tc_configuration** %7, align 8
  %36 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %37 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %36, i32 0, i32 2
  %38 = load %struct.tc_configuration*, %struct.tc_configuration** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %38, i64 %42
  store %struct.tc_configuration* %43, %struct.tc_configuration** %8, align 8
  %44 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %45 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %53 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %51, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %27
  %62 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %63 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %71 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %69, i64* %76, align 8
  %77 = load i32, i32* @BIT_PG_TX, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %61, %27
  %81 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %82 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %90 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %88, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %80
  %99 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %100 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %108 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 %106, i64* %113, align 8
  %114 = load i32, i32* @BIT_PG_TX, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %98, %80
  %118 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %119 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %127 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %125, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %117
  %136 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %137 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %145 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store i64 %143, i64* %150, align 8
  %151 = load i32, i32* @BIT_PG_TX, align 4
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %135, %117
  %155 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %156 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %164 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %162, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %154
  %173 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %174 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %182 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  store i64 %180, i64* %187, align 8
  %188 = load i32, i32* @BIT_PG_TX, align 4
  %189 = load i32, i32* @BIT_PFC, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @BIT_APP_UPCHG, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %172, %154
  %196 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %197 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %205 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %203, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %195
  %214 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %215 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %223 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  store i64 %221, i64* %228, align 8
  %229 = load i32, i32* @BIT_PG_RX, align 4
  %230 = load i32, i32* %13, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %213, %195
  %233 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %234 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %242 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %241, i32 0, i32 1
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %240, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %232
  %251 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %252 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %251, i32 0, i32 1
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %260 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %259, i32 0, i32 1
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  store i64 %258, i64* %265, align 8
  %266 = load i32, i32* @BIT_PG_RX, align 4
  %267 = load i32, i32* %13, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %250, %232
  %270 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %271 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %270, i32 0, i32 1
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %279 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %277, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %269
  %288 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %289 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %297 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %296, i32 0, i32 1
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  store i64 %295, i64* %302, align 8
  %303 = load i32, i32* @BIT_PG_RX, align 4
  %304 = load i32, i32* %13, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %13, align 4
  br label %306

306:                                              ; preds = %287, %269
  %307 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %308 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %307, i32 0, i32 1
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %316 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %315, i32 0, i32 1
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %314, %322
  br i1 %323, label %324, label %347

324:                                              ; preds = %306
  %325 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %326 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %325, i32 0, i32 1
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %334 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %333, i32 0, i32 1
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 3
  store i64 %332, i64* %339, align 8
  %340 = load i32, i32* @BIT_PG_RX, align 4
  %341 = load i32, i32* @BIT_PFC, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @BIT_APP_UPCHG, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* %13, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %13, align 4
  br label %347

347:                                              ; preds = %324, %306
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %9, align 4
  br label %21

351:                                              ; preds = %21
  %352 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %352, i32* %9, align 4
  br label %353

353:                                              ; preds = %459, %351
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @DCB_PG_ATTR_BW_ID_MAX, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %462

357:                                              ; preds = %353
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %360 = sub nsw i32 %358, %359
  store i32 %360, i32* %10, align 4
  %361 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %362 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %361, i32 0, i32 0
  %363 = load i64**, i64*** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64*, i64** %363, i64 %365
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %10, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %373 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %372, i32 0, i32 0
  %374 = load i64**, i64*** %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i64*, i64** %374, i64 %376
  %378 = load i64*, i64** %377, align 8
  %379 = load i32, i32* %10, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %378, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %371, %382
  br i1 %383, label %384, label %409

384:                                              ; preds = %357
  %385 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %386 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %385, i32 0, i32 0
  %387 = load i64**, i64*** %386, align 8
  %388 = load i32, i32* %11, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64*, i64** %387, i64 %389
  %391 = load i64*, i64** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64, i64* %391, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %397 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %396, i32 0, i32 0
  %398 = load i64**, i64*** %397, align 8
  %399 = load i32, i32* %11, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64*, i64** %398, i64 %400
  %402 = load i64*, i64** %401, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i64, i64* %402, i64 %404
  store i64 %395, i64* %405, align 8
  %406 = load i32, i32* @BIT_PG_TX, align 4
  %407 = load i32, i32* %13, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %13, align 4
  br label %409

409:                                              ; preds = %384, %357
  %410 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %411 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %410, i32 0, i32 0
  %412 = load i64**, i64*** %411, align 8
  %413 = load i32, i32* %12, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i64*, i64** %412, i64 %414
  %416 = load i64*, i64** %415, align 8
  %417 = load i32, i32* %10, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %416, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %422 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %421, i32 0, i32 0
  %423 = load i64**, i64*** %422, align 8
  %424 = load i32, i32* %12, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64*, i64** %423, i64 %425
  %427 = load i64*, i64** %426, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64, i64* %427, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %420, %431
  br i1 %432, label %433, label %458

433:                                              ; preds = %409
  %434 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %435 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %434, i32 0, i32 0
  %436 = load i64**, i64*** %435, align 8
  %437 = load i32, i32* %12, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i64*, i64** %436, i64 %438
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %10, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %446 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %445, i32 0, i32 0
  %447 = load i64**, i64*** %446, align 8
  %448 = load i32, i32* %12, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i64*, i64** %447, i64 %449
  %451 = load i64*, i64** %450, align 8
  %452 = load i32, i32* %10, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %451, i64 %453
  store i64 %444, i64* %454, align 8
  %455 = load i32, i32* @BIT_PG_RX, align 4
  %456 = load i32, i32* %13, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %13, align 4
  br label %458

458:                                              ; preds = %433, %409
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %9, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %9, align 4
  br label %353

462:                                              ; preds = %353
  %463 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  store i32 %463, i32* %9, align 4
  br label %464

464:                                              ; preds = %509, %462
  %465 = load i32, i32* %9, align 4
  %466 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %467 = icmp slt i32 %465, %466
  br i1 %467, label %468, label %512

468:                                              ; preds = %464
  %469 = load i32, i32* %9, align 4
  %470 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  %471 = sub nsw i32 %469, %470
  store i32 %471, i32* %10, align 4
  %472 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %473 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %472, i32 0, i32 2
  %474 = load %struct.tc_configuration*, %struct.tc_configuration** %473, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %474, i64 %476
  %478 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %481 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %480, i32 0, i32 2
  %482 = load %struct.tc_configuration*, %struct.tc_configuration** %481, align 8
  %483 = load i32, i32* %10, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %482, i64 %484
  %486 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %479, %487
  br i1 %488, label %489, label %508

489:                                              ; preds = %468
  %490 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %491 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %490, i32 0, i32 2
  %492 = load %struct.tc_configuration*, %struct.tc_configuration** %491, align 8
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %492, i64 %494
  %496 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %499 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %498, i32 0, i32 2
  %500 = load %struct.tc_configuration*, %struct.tc_configuration** %499, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %500, i64 %502
  %504 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %503, i32 0, i32 0
  store i64 %497, i64* %504, align 8
  %505 = load i32, i32* @BIT_PFC, align 4
  %506 = load i32, i32* %13, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %13, align 4
  br label %508

508:                                              ; preds = %489, %468
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %9, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %9, align 4
  br label %464

512:                                              ; preds = %464
  %513 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %514 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %517 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %516, i32 0, i32 1
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %515, %518
  br i1 %519, label %520, label %529

520:                                              ; preds = %512
  %521 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %522 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %521, i32 0, i32 1
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %525 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %524, i32 0, i32 1
  store i64 %523, i64* %525, align 8
  %526 = load i32, i32* @BIT_PFC, align 4
  %527 = load i32, i32* %13, align 4
  %528 = or i32 %527, %526
  store i32 %528, i32* %13, align 4
  br label %529

529:                                              ; preds = %520, %512
  %530 = load i32, i32* %13, align 4
  ret i32 %530
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
