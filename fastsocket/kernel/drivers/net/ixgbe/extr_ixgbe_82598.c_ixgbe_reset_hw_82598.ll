; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.5*)*, i32 (%struct.ixgbe_hw.6*)* }
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque

@IXGBE_ATLAS_PDN_LPBK = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_REG_EN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_10G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_10G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_1G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_1G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_AN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_AN_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_GHECCR = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = call i64 %14(%struct.ixgbe_hw.0* %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %280

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.4*
  %29 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %30 = call i32 %26(%struct.ixgbe_hw.4* %28, i32 %29, i32* %9)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %128

35:                                               ; preds = %21
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.4*
  %43 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %44 = call i32 %40(%struct.ixgbe_hw.4* %42, i32 %43, i32* %9)
  %45 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.3*
  %56 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 %53(%struct.ixgbe_hw.3* %55, i32 %56, i32 %57)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.4*
  %66 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %67 = call i32 %63(%struct.ixgbe_hw.4* %65, i32 %66, i32* %9)
  %68 = load i32, i32* @IXGBE_ATLAS_PDN_TX_10G_QL_ALL, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.3*
  %79 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 %76(%struct.ixgbe_hw.3* %78, i32 %79, i32 %80)
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %85, align 8
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %88 = bitcast %struct.ixgbe_hw* %87 to %struct.ixgbe_hw.4*
  %89 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %90 = call i32 %86(%struct.ixgbe_hw.4* %88, i32 %89, i32* %9)
  %91 = load i32, i32* @IXGBE_ATLAS_PDN_TX_1G_QL_ALL, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %98, align 8
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %101 = bitcast %struct.ixgbe_hw* %100 to %struct.ixgbe_hw.3*
  %102 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 %99(%struct.ixgbe_hw.3* %101, i32 %102, i32 %103)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %108, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %111 = bitcast %struct.ixgbe_hw* %110 to %struct.ixgbe_hw.4*
  %112 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %113 = call i32 %109(%struct.ixgbe_hw.4* %111, i32 %112, i32* %9)
  %114 = load i32, i32* @IXGBE_ATLAS_PDN_TX_AN_QL_ALL, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %121, align 8
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %124 = bitcast %struct.ixgbe_hw* %123 to %struct.ixgbe_hw.3*
  %125 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 %122(%struct.ixgbe_hw.3* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %35, %21
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %128
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64 (%struct.ixgbe_hw.5*)*, i64 (%struct.ixgbe_hw.5*)** %138, align 8
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = bitcast %struct.ixgbe_hw* %140 to %struct.ixgbe_hw.5*
  %142 = call i64 %139(%struct.ixgbe_hw.5* %141)
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %280

147:                                              ; preds = %134
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %162

152:                                              ; preds = %147
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.6*)** %156, align 8
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %159 = bitcast %struct.ixgbe_hw* %158 to %struct.ixgbe_hw.6*
  %160 = call i32 %157(%struct.ixgbe_hw.6* %159)
  br label %161

161:                                              ; preds = %152, %128
  br label %162

162:                                              ; preds = %209, %161, %151
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %164 = load i32, i32* @IXGBE_CTRL, align 4
  %165 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %163, i32 %164)
  %166 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %5, align 4
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %169 = load i32, i32* @IXGBE_CTRL, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %168, i32 %169, i32 %170)
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %173 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %172)
  store i32 0, i32* %7, align 4
  br label %174

174:                                              ; preds = %188, %162
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 10
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = call i32 @udelay(i32 1)
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %180 = load i32, i32* @IXGBE_CTRL, align 4
  %181 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %179, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %177
  br label %191

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %174

191:                                              ; preds = %186, %174
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %197, i64* %3, align 8
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %199 = call i32 @hw_dbg(%struct.ixgbe_hw* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %200

200:                                              ; preds = %196, %191
  %201 = call i32 @msleep(i32 50)
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %203 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %200
  %210 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %213 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %211
  store i32 %216, i32* %214, align 8
  br label %162

217:                                              ; preds = %200
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %219 = load i32, i32* @IXGBE_GHECCR, align 4
  %220 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %218, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = and i32 %221, -2359873
  store i32 %222, i32* %6, align 4
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %224 = load i32, i32* @IXGBE_GHECCR, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %223, i32 %224, i32 %225)
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %228 = load i32, i32* @IXGBE_AUTOC, align 4
  %229 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %227, i32 %228)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %231 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %217
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %238 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  store i32 %236, i32* %239, align 8
  %240 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  store i32 1, i32* %242, align 4
  br label %259

243:                                              ; preds = %217
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %246 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %244, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %243
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %252 = load i32, i32* @IXGBE_AUTOC, align 4
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %254 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %251, i32 %252, i32 %256)
  br label %258

258:                                              ; preds = %250, %243
  br label %259

259:                                              ; preds = %258, %235
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %261 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %263, align 8
  %265 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %266 = bitcast %struct.ixgbe_hw* %265 to %struct.ixgbe_hw.2*
  %267 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %268 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = call i32 %264(%struct.ixgbe_hw.2* %266, i32 %270)
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %273 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %275, align 8
  %277 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %278 = bitcast %struct.ixgbe_hw* %277 to %struct.ixgbe_hw.1*
  %279 = call i32 %276(%struct.ixgbe_hw.1* %278)
  br label %280

280:                                              ; preds = %259, %146, %20
  %281 = load i64, i64* %4, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i64, i64* %4, align 8
  store i64 %284, i64* %3, align 8
  br label %285

285:                                              ; preds = %283, %280
  %286 = load i64, i64* %3, align 8
  ret i64 %286
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
