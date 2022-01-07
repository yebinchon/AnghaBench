; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_link_settings_requested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_link_settings_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32*, i64*, i32* }
%struct.TYPE_6__ = type { i32, i64*, i8**, i8**, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DUPLEX_FULL = common dso_local global i8* null, align 8
@PORT_FEATURE_LINK_SPEED_MASK = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i8* null, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i8* null, align 8
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\0A\00", align 1
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i8* null, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i8* null, align 8
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"NVRAM config error. BAD link speed link_config 0x%x\0A\00", align 1
@PORT_FEATURE_FLOW_CONTROL_MASK = common dso_local global i64 0, align 8
@BNX2X_FLOW_CTRL_AUTO = common dso_local global i64 0, align 8
@BNX2X_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"req_line_speed %d  req_duplex %d req_flow_ctrl 0x%x advertising 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_link_settings_requested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_link_settings_requested(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %22 [
    i32 1, label %20
    i32 2, label %20
    i32 3, label %21
  ]

20:                                               ; preds = %1, %1
  store i64 1, i64* %5, align 8
  br label %22

21:                                               ; preds = %1
  store i64 2, i64* %5, align 8
  br label %22

22:                                               ; preds = %1, %21, %20
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %526, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %529

27:                                               ; preds = %23
  %28 = load i8*, i8** @DUPLEX_FULL, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @PORT_FEATURE_LINK_SPEED_MASK, align 8
  %44 = and i64 %42, %43
  switch i64 %44, label %431 [
    i64 128, label %45
    i64 133, label %122
    i64 132, label %163
    i64 136, label %211
    i64 135, label %252
    i64 131, label %300
    i64 129, label %341
    i64 134, label %382
    i64 130, label %423
  ]

45:                                               ; preds = %27
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %45
  %57 = load i8*, i8** @SPEED_AUTO_NEG, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %72 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* @EXT_PHY1, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %56
  %90 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %91 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %89, %56
  br label %121

102:                                              ; preds = %45
  %103 = load i8*, i8** @SPEED_10000, align 8
  %104 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %103, i8** %109, align 8
  %110 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %111 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %114 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %112
  store i32 %120, i32* %118, align 4
  br label %526

121:                                              ; preds = %101
  br label %454

122:                                              ; preds = %27
  %123 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %124 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %122
  %134 = load i8*, i8** @SPEED_10, align 8
  %135 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* %134, i8** %140, align 8
  %141 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %142 = load i32, i32* @ADVERTISED_TP, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %145 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %4, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %143
  store i32 %151, i32* %149, align 4
  br label %162

152:                                              ; preds = %122
  %153 = load i64, i64* %3, align 8
  %154 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %155 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %4, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %153, i32 %160)
  br label %529

162:                                              ; preds = %133
  br label %454

163:                                              ; preds = %27
  %164 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %165 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %4, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %163
  %175 = load i8*, i8** @SPEED_10, align 8
  %176 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %177 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* %4, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  store i8* %175, i8** %181, align 8
  %182 = load i8*, i8** @DUPLEX_HALF, align 8
  %183 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %184 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i8**, i8*** %185, align 8
  %187 = load i64, i64* %4, align 8
  %188 = getelementptr inbounds i8*, i8** %186, i64 %187
  store i8* %182, i8** %188, align 8
  %189 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %190 = load i32, i32* @ADVERTISED_TP, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %193 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %4, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %191
  store i32 %199, i32* %197, align 4
  br label %210

200:                                              ; preds = %163
  %201 = load i64, i64* %3, align 8
  %202 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %203 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %4, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %201, i32 %208)
  br label %529

210:                                              ; preds = %174
  br label %454

211:                                              ; preds = %27
  %212 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %213 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* %4, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %211
  %223 = load i8*, i8** @SPEED_100, align 8
  %224 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %225 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i8**, i8*** %226, align 8
  %228 = load i64, i64* %4, align 8
  %229 = getelementptr inbounds i8*, i8** %227, i64 %228
  store i8* %223, i8** %229, align 8
  %230 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %231 = load i32, i32* @ADVERTISED_TP, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %234 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %4, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %232
  store i32 %240, i32* %238, align 4
  br label %251

241:                                              ; preds = %211
  %242 = load i64, i64* %3, align 8
  %243 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %244 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* %4, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %242, i32 %249)
  br label %529

251:                                              ; preds = %222
  br label %454

252:                                              ; preds = %27
  %253 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %254 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* %4, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %289

263:                                              ; preds = %252
  %264 = load i8*, i8** @SPEED_100, align 8
  %265 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %266 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  %268 = load i8**, i8*** %267, align 8
  %269 = load i64, i64* %4, align 8
  %270 = getelementptr inbounds i8*, i8** %268, i64 %269
  store i8* %264, i8** %270, align 8
  %271 = load i8*, i8** @DUPLEX_HALF, align 8
  %272 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %273 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i8**, i8*** %274, align 8
  %276 = load i64, i64* %4, align 8
  %277 = getelementptr inbounds i8*, i8** %275, i64 %276
  store i8* %271, i8** %277, align 8
  %278 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %279 = load i32, i32* @ADVERTISED_TP, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %282 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* %4, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %280
  store i32 %288, i32* %286, align 4
  br label %299

289:                                              ; preds = %252
  %290 = load i64, i64* %3, align 8
  %291 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %292 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* %4, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %290, i32 %297)
  br label %529

299:                                              ; preds = %263
  br label %454

300:                                              ; preds = %27
  %301 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %302 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* %4, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %300
  %312 = load i8*, i8** @SPEED_1000, align 8
  %313 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %314 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 3
  %316 = load i8**, i8*** %315, align 8
  %317 = load i64, i64* %4, align 8
  %318 = getelementptr inbounds i8*, i8** %316, i64 %317
  store i8* %312, i8** %318, align 8
  %319 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %320 = load i32, i32* @ADVERTISED_TP, align 4
  %321 = or i32 %319, %320
  %322 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %323 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i64, i64* %4, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %321
  store i32 %329, i32* %327, align 4
  br label %340

330:                                              ; preds = %300
  %331 = load i64, i64* %3, align 8
  %332 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %333 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* %4, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %331, i32 %338)
  br label %529

340:                                              ; preds = %311
  br label %454

341:                                              ; preds = %27
  %342 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %343 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 2
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* %4, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %371

352:                                              ; preds = %341
  %353 = load i8*, i8** @SPEED_2500, align 8
  %354 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %355 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 3
  %357 = load i8**, i8*** %356, align 8
  %358 = load i64, i64* %4, align 8
  %359 = getelementptr inbounds i8*, i8** %357, i64 %358
  store i8* %353, i8** %359, align 8
  %360 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %361 = load i32, i32* @ADVERTISED_TP, align 4
  %362 = or i32 %360, %361
  %363 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %364 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %4, align 8
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %362
  store i32 %370, i32* %368, align 4
  br label %381

371:                                              ; preds = %341
  %372 = load i64, i64* %3, align 8
  %373 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %374 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* %4, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %372, i32 %379)
  br label %529

381:                                              ; preds = %352
  br label %454

382:                                              ; preds = %27
  %383 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %384 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load i64, i64* %4, align 8
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %412

393:                                              ; preds = %382
  %394 = load i8*, i8** @SPEED_10000, align 8
  %395 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %396 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 3
  %398 = load i8**, i8*** %397, align 8
  %399 = load i64, i64* %4, align 8
  %400 = getelementptr inbounds i8*, i8** %398, i64 %399
  store i8* %394, i8** %400, align 8
  %401 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %402 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %403 = or i32 %401, %402
  %404 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %405 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = load i64, i64* %4, align 8
  %409 = getelementptr inbounds i32, i32* %407, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = or i32 %410, %403
  store i32 %411, i32* %409, align 4
  br label %422

412:                                              ; preds = %382
  %413 = load i64, i64* %3, align 8
  %414 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %415 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 4
  %417 = load i32*, i32** %416, align 8
  %418 = load i64, i64* %4, align 8
  %419 = getelementptr inbounds i32, i32* %417, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %413, i32 %420)
  br label %529

422:                                              ; preds = %393
  br label %454

423:                                              ; preds = %27
  %424 = load i8*, i8** @SPEED_20000, align 8
  %425 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %426 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 3
  %428 = load i8**, i8*** %427, align 8
  %429 = load i64, i64* %4, align 8
  %430 = getelementptr inbounds i8*, i8** %428, i64 %429
  store i8* %424, i8** %430, align 8
  br label %454

431:                                              ; preds = %27
  %432 = load i64, i64* %3, align 8
  %433 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %432)
  %434 = load i8*, i8** @SPEED_AUTO_NEG, align 8
  %435 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %436 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 3
  %438 = load i8**, i8*** %437, align 8
  %439 = load i64, i64* %4, align 8
  %440 = getelementptr inbounds i8*, i8** %438, i64 %439
  store i8* %434, i8** %440, align 8
  %441 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %442 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 2
  %444 = load i32*, i32** %443, align 8
  %445 = load i64, i64* %4, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %449 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* %4, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  store i32 %447, i32* %453, align 4
  br label %454

454:                                              ; preds = %431, %423, %422, %381, %340, %299, %251, %210, %162, %121
  %455 = load i64, i64* %3, align 8
  %456 = load i64, i64* @PORT_FEATURE_FLOW_CONTROL_MASK, align 8
  %457 = and i64 %455, %456
  %458 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %459 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 1
  %461 = load i64*, i64** %460, align 8
  %462 = load i64, i64* %4, align 8
  %463 = getelementptr inbounds i64, i64* %461, i64 %462
  store i64 %457, i64* %463, align 8
  %464 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %465 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 1
  %467 = load i64*, i64** %466, align 8
  %468 = load i64, i64* %4, align 8
  %469 = getelementptr inbounds i64, i64* %467, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @BNX2X_FLOW_CTRL_AUTO, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %496

473:                                              ; preds = %454
  %474 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %475 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 2
  %477 = load i32*, i32** %476, align 8
  %478 = load i64, i64* %4, align 8
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %492, label %484

484:                                              ; preds = %473
  %485 = load i64, i64* @BNX2X_FLOW_CTRL_NONE, align 8
  %486 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %487 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i32 0, i32 1
  %489 = load i64*, i64** %488, align 8
  %490 = load i64, i64* %4, align 8
  %491 = getelementptr inbounds i64, i64* %489, i64 %490
  store i64 %485, i64* %491, align 8
  br label %495

492:                                              ; preds = %473
  %493 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %494 = call i32 @bnx2x_set_requested_fc(%struct.bnx2x* %493)
  br label %495

495:                                              ; preds = %492, %484
  br label %496

496:                                              ; preds = %495, %454
  %497 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %498 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 3
  %500 = load i8**, i8*** %499, align 8
  %501 = load i64, i64* %4, align 8
  %502 = getelementptr inbounds i8*, i8** %500, i64 %501
  %503 = load i8*, i8** %502, align 8
  %504 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %505 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 2
  %507 = load i8**, i8*** %506, align 8
  %508 = load i64, i64* %4, align 8
  %509 = getelementptr inbounds i8*, i8** %507, i64 %508
  %510 = load i8*, i8** %509, align 8
  %511 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %512 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 1
  %514 = load i64*, i64** %513, align 8
  %515 = load i64, i64* %4, align 8
  %516 = getelementptr inbounds i64, i64* %514, i64 %515
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %519 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = load i64, i64* %4, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %503, i8* %510, i64 %517, i32 %524)
  br label %526

526:                                              ; preds = %496, %102
  %527 = load i64, i64* %4, align 8
  %528 = add i64 %527, 1
  store i64 %528, i64* %4, align 8
  br label %23

529:                                              ; preds = %152, %200, %241, %289, %330, %371, %412, %23
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, i64, ...) #1

declare dso_local i32 @bnx2x_set_requested_fc(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
