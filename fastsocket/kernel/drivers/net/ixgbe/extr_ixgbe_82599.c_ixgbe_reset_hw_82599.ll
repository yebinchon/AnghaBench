; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.7*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque
%struct.ixgbe_hw.9 = type opaque
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.10*)*, i32 (%struct.ixgbe_hw.11*)* }
%struct.ixgbe_hw.10 = type opaque
%struct.ixgbe_hw.11 = type opaque

@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_CTRL_LNK_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_LINK_DISABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_UPPER_MASK = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = call i64 %15(%struct.ixgbe_hw.0* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %428

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %23)
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64 (%struct.ixgbe_hw.10*)*, i64 (%struct.ixgbe_hw.10*)** %28, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = bitcast %struct.ixgbe_hw* %30 to %struct.ixgbe_hw.10*
  %32 = call i64 %29(%struct.ixgbe_hw.10* %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %428

37:                                               ; preds = %22
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %47, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = bitcast %struct.ixgbe_hw* %49 to %struct.ixgbe_hw.1*
  %51 = call i64 %48(%struct.ixgbe_hw.1* %50)
  store i64 %51, i64* %4, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %43, %37
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %428

60:                                               ; preds = %55
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %70, align 8
  %72 = icmp ne i32 (%struct.ixgbe_hw.11*)* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.11*
  %81 = call i32 %78(%struct.ixgbe_hw.11* %80)
  br label %82

82:                                               ; preds = %73, %66, %60
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %8, align 4
  br label %101

95:                                               ; preds = %82
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = load i32, i32* @IXGBE_AUTOC, align 4
  %98 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %96, i32 %97)
  %99 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %169, %101
  %103 = load i32, i32* @IXGBE_CTRL_LNK_RST, align 4
  store i32 %103, i32* %5, align 4
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %102
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 9
  %113 = load i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)** %112, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %115 = bitcast %struct.ixgbe_hw* %114 to %struct.ixgbe_hw.9*
  %116 = call i32 %113(%struct.ixgbe_hw.9* %115, i32* %3, i32* %9, i32 0)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %108
  br label %122

122:                                              ; preds = %121, %102
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %124 = load i32, i32* @IXGBE_CTRL, align 4
  %125 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %129 = load i32, i32* @IXGBE_CTRL, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %128, i32 %129, i32 %130)
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %148, %122
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 10
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = call i32 @udelay(i32 1)
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %140 = load i32, i32* @IXGBE_CTRL, align 4
  %141 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  br label %151

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %134

151:                                              ; preds = %146, %134
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %157, i64* %4, align 8
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %159 = call i32 @hw_dbg(%struct.ixgbe_hw* %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %151
  %161 = call i32 @msleep(i32 50)
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %160
  %170 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %173 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %171
  store i32 %176, i32* %174, align 4
  br label %102

177:                                              ; preds = %160
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %179 = load i32, i32* @IXGBE_AUTOC, align 4
  %180 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %182 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %185 = load i32, i32* @IXGBE_AUTOC2, align 4
  %186 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %184, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %177
  %192 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %7, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %7, align 4
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %197 = load i32, i32* @IXGBE_AUTOC2, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %196, i32 %197, i32 %198)
  %200 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %201 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %200)
  br label %202

202:                                              ; preds = %191, %177
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %204 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %202
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %214 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %218 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  store i32 %216, i32* %219, align 8
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %221 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i32 1, i32* %222, align 8
  br label %339

223:                                              ; preds = %202
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %225 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %231 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %229, %223
  %235 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %236 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %234, %229
  %240 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %245 = xor i32 %244, -1
  %246 = and i32 %243, %245
  %247 = load i32, i32* %8, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %250 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 3
  store i32 %248, i32* %251, align 4
  br label %252

252:                                              ; preds = %239, %234
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %254 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %258 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %256, %260
  br i1 %261, label %262, label %310

262:                                              ; preds = %252
  store i32 0, i32* %10, align 4
  %263 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %264 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %268 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 2
  %271 = load i64 (%struct.ixgbe_hw.2*, i32)*, i64 (%struct.ixgbe_hw.2*, i32)** %270, align 8
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %273 = bitcast %struct.ixgbe_hw* %272 to %struct.ixgbe_hw.2*
  %274 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %275 = call i64 %271(%struct.ixgbe_hw.2* %273, i32 %274)
  store i64 %275, i64* %4, align 8
  %276 = load i64, i64* %4, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %266
  br label %428

279:                                              ; preds = %266
  store i32 1, i32* %10, align 4
  br label %280

280:                                              ; preds = %279, %262
  %281 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %282 = load i32, i32* @IXGBE_AUTOC, align 4
  %283 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %284 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %281, i32 %282, i32 %286)
  %288 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %289 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %293 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  %295 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %296 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %295)
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %280
  %300 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %301 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 9
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 8
  %304 = load i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)** %303, align 8
  %305 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %306 = bitcast %struct.ixgbe_hw* %305 to %struct.ixgbe_hw.8*
  %307 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %308 = call i32 %304(%struct.ixgbe_hw.8* %306, i32 %307)
  br label %309

309:                                              ; preds = %299, %280
  br label %310

310:                                              ; preds = %309, %252
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %313 = and i32 %311, %312
  %314 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %315 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %313, %319
  br i1 %320, label %321, label %338

321:                                              ; preds = %310
  %322 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %323 = xor i32 %322, -1
  %324 = load i32, i32* %7, align 4
  %325 = and i32 %324, %323
  store i32 %325, i32* %7, align 4
  %326 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %327 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %331 = and i32 %329, %330
  %332 = load i32, i32* %7, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %7, align 4
  %334 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %335 = load i32, i32* @IXGBE_AUTOC2, align 4
  %336 = load i32, i32* %7, align 4
  %337 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %334, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %321, %310
  br label %339

339:                                              ; preds = %338, %208
  %340 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %341 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 9
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 7
  %344 = load i32 (%struct.ixgbe_hw.7*, i32)*, i32 (%struct.ixgbe_hw.7*, i32)** %343, align 8
  %345 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %346 = bitcast %struct.ixgbe_hw* %345 to %struct.ixgbe_hw.7*
  %347 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %348 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 11
  %350 = load i32, i32* %349, align 4
  %351 = call i32 %344(%struct.ixgbe_hw.7* %346, i32 %350)
  %352 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %353 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 5
  store i32 128, i32* %354, align 4
  %355 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %356 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 6
  %359 = load i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.6*)** %358, align 8
  %360 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %361 = bitcast %struct.ixgbe_hw* %360 to %struct.ixgbe_hw.6*
  %362 = call i32 %359(%struct.ixgbe_hw.6* %361)
  %363 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %364 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 9
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 5
  %367 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %366, align 8
  %368 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %369 = bitcast %struct.ixgbe_hw* %368 to %struct.ixgbe_hw.5*
  %370 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %371 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 10
  %373 = load i32, i32* %372, align 8
  %374 = call i32 %367(%struct.ixgbe_hw.5* %369, i32 %373)
  %375 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %376 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 10
  %378 = load i32, i32* %377, align 8
  %379 = call i64 @is_valid_ether_addr(i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %413

381:                                              ; preds = %339
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %383 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 9
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 4
  %386 = load i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)** %385, align 8
  %387 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %388 = bitcast %struct.ixgbe_hw* %387 to %struct.ixgbe_hw.4*
  %389 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %390 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, 1
  %394 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %395 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @IXGBE_RAH_AV, align 4
  %399 = call i32 %386(%struct.ixgbe_hw.4* %388, i32 %393, i32 %397, i32 0, i32 %398)
  %400 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %401 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = sub nsw i32 %403, 1
  %405 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %406 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 6
  store i32 %404, i32* %407, align 8
  %408 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %409 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, -1
  store i32 %412, i32* %410, align 4
  br label %413

413:                                              ; preds = %381, %339
  %414 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %415 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 9
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 3
  %418 = load i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)** %417, align 8
  %419 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %420 = bitcast %struct.ixgbe_hw* %419 to %struct.ixgbe_hw.3*
  %421 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %422 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 8
  %424 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %425 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 7
  %427 = call i32 %418(%struct.ixgbe_hw.3* %420, i32* %423, i32* %426)
  br label %428

428:                                              ; preds = %413, %278, %59, %36, %21
  %429 = load i64, i64* %4, align 8
  ret i64 %429
}

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
