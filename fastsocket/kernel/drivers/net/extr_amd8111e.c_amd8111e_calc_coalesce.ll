; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_calc_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_calc_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { %struct.amd8111e_coalesce_conf }
%struct.amd8111e_coalesce_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32 }

@NO_COALESCE = common dso_local global i64 0, align 8
@RX_INTR_COAL = common dso_local global i32 0, align 4
@LOW_COALESCE = common dso_local global i64 0, align 8
@MEDIUM_COALESCE = common dso_local global i64 0, align 8
@HIGH_COALESCE = common dso_local global i64 0, align 8
@TX_INTR_COAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_calc_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_calc_coalesce(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca %struct.amd8111e_coalesce_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.amd8111e_priv* %12, %struct.amd8111e_priv** %3, align 8
  %13 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %13, i32 0, i32 0
  store %struct.amd8111e_coalesce_conf* %14, %struct.amd8111e_coalesce_conf** %4, align 8
  %15 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %16 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %19 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %23 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %26 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %28 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %31 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %35 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %38 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %40 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %43 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %47 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %50 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %52 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %55 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %59 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %62 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 800
  br i1 %64, label %65, label %83

65:                                               ; preds = %1
  %66 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %67 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NO_COALESCE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %73 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %72, i32 0, i32 9
  store i32 0, i32* %73, align 8
  %74 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %75 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %74, i32 0, i32 10
  store i32 0, i32* %75, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load i32, i32* @RX_INTR_COAL, align 4
  %78 = call i32 @amd8111e_set_coalesce(%struct.net_device* %76, i32 %77)
  %79 = load i64, i64* @NO_COALESCE, align 8
  %80 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %81 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %80, i32 0, i32 8
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %71, %65
  br label %180

83:                                               ; preds = %1
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 128
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %91 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NO_COALESCE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %97 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %96, i32 0, i32 9
  store i32 0, i32* %97, align 8
  %98 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %99 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %98, i32 0, i32 10
  store i32 0, i32* %99, align 4
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @RX_INTR_COAL, align 4
  %102 = call i32 @amd8111e_set_coalesce(%struct.net_device* %100, i32 %101)
  %103 = load i64, i64* @NO_COALESCE, align 8
  %104 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %105 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %104, i32 0, i32 8
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %95, %89
  br label %179

107:                                              ; preds = %83
  %108 = load i32, i32* %9, align 4
  %109 = icmp sge i32 %108, 128
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 512
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %115 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LOW_COALESCE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %121 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %120, i32 0, i32 9
  store i32 1, i32* %121, align 8
  %122 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %123 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %122, i32 0, i32 10
  store i32 4, i32* %123, align 4
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = load i32, i32* @RX_INTR_COAL, align 4
  %126 = call i32 @amd8111e_set_coalesce(%struct.net_device* %124, i32 %125)
  %127 = load i64, i64* @LOW_COALESCE, align 8
  %128 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %129 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %128, i32 0, i32 8
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %119, %113
  br label %178

131:                                              ; preds = %110, %107
  %132 = load i32, i32* %9, align 4
  %133 = icmp sge i32 %132, 512
  br i1 %133, label %134, label %155

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 1024
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %139 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MEDIUM_COALESCE, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %145 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %144, i32 0, i32 9
  store i32 1, i32* %145, align 8
  %146 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %147 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %146, i32 0, i32 10
  store i32 4, i32* %147, align 4
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = load i32, i32* @RX_INTR_COAL, align 4
  %150 = call i32 @amd8111e_set_coalesce(%struct.net_device* %148, i32 %149)
  %151 = load i64, i64* @MEDIUM_COALESCE, align 8
  %152 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %153 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %152, i32 0, i32 8
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %137
  br label %177

155:                                              ; preds = %134, %131
  %156 = load i32, i32* %9, align 4
  %157 = icmp sge i32 %156, 1024
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %160 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @HIGH_COALESCE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %166 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %165, i32 0, i32 9
  store i32 2, i32* %166, align 8
  %167 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %168 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %167, i32 0, i32 10
  store i32 3, i32* %168, align 4
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = load i32, i32* @RX_INTR_COAL, align 4
  %171 = call i32 @amd8111e_set_coalesce(%struct.net_device* %169, i32 %170)
  %172 = load i64, i64* @HIGH_COALESCE, align 8
  %173 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %174 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %173, i32 0, i32 8
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %164, %158
  br label %176

176:                                              ; preds = %175, %155
  br label %177

177:                                              ; preds = %176, %154
  br label %178

178:                                              ; preds = %177, %130
  br label %179

179:                                              ; preds = %178, %106
  br label %180

180:                                              ; preds = %179, %82
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %181, 800
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %185 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %184, i32 0, i32 11
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @NO_COALESCE, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %191 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %190, i32 0, i32 12
  store i32 0, i32* %191, align 8
  %192 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %193 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %192, i32 0, i32 13
  store i32 0, i32* %193, align 4
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = load i32, i32* @TX_INTR_COAL, align 4
  %196 = call i32 @amd8111e_set_coalesce(%struct.net_device* %194, i32 %195)
  %197 = load i64, i64* @NO_COALESCE, align 8
  %198 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %199 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %198, i32 0, i32 11
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %189, %183
  br label %302

201:                                              ; preds = %180
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %5, align 4
  %204 = sdiv i32 %202, %203
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %205, 128
  br i1 %206, label %207, label %225

207:                                              ; preds = %201
  %208 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %209 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %208, i32 0, i32 11
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NO_COALESCE, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %215 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %214, i32 0, i32 12
  store i32 0, i32* %215, align 8
  %216 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %217 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %216, i32 0, i32 13
  store i32 0, i32* %217, align 4
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = load i32, i32* @TX_INTR_COAL, align 4
  %220 = call i32 @amd8111e_set_coalesce(%struct.net_device* %218, i32 %219)
  %221 = load i64, i64* @NO_COALESCE, align 8
  %222 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %223 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %222, i32 0, i32 11
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %213, %207
  br label %301

225:                                              ; preds = %201
  %226 = load i32, i32* %10, align 4
  %227 = icmp sge i32 %226, 128
  br i1 %227, label %228, label %249

228:                                              ; preds = %225
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %229, 512
  br i1 %230, label %231, label %249

231:                                              ; preds = %228
  %232 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %233 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %232, i32 0, i32 11
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @LOW_COALESCE, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %231
  %238 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %239 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %238, i32 0, i32 12
  store i32 1, i32* %239, align 8
  %240 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %241 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %240, i32 0, i32 13
  store i32 2, i32* %241, align 4
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = load i32, i32* @TX_INTR_COAL, align 4
  %244 = call i32 @amd8111e_set_coalesce(%struct.net_device* %242, i32 %243)
  %245 = load i64, i64* @LOW_COALESCE, align 8
  %246 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %247 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %246, i32 0, i32 11
  store i64 %245, i64* %247, align 8
  br label %248

248:                                              ; preds = %237, %231
  br label %300

249:                                              ; preds = %228, %225
  %250 = load i32, i32* %10, align 4
  %251 = icmp sge i32 %250, 512
  br i1 %251, label %252, label %273

252:                                              ; preds = %249
  %253 = load i32, i32* %10, align 4
  %254 = icmp slt i32 %253, 1024
  br i1 %254, label %255, label %273

255:                                              ; preds = %252
  %256 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %257 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %256, i32 0, i32 11
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @MEDIUM_COALESCE, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %255
  %262 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %263 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %262, i32 0, i32 12
  store i32 2, i32* %263, align 8
  %264 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %265 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %264, i32 0, i32 13
  store i32 5, i32* %265, align 4
  %266 = load %struct.net_device*, %struct.net_device** %2, align 8
  %267 = load i32, i32* @TX_INTR_COAL, align 4
  %268 = call i32 @amd8111e_set_coalesce(%struct.net_device* %266, i32 %267)
  %269 = load i64, i64* @MEDIUM_COALESCE, align 8
  %270 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %271 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %270, i32 0, i32 11
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %261, %255
  br label %299

273:                                              ; preds = %252, %249
  %274 = load i32, i32* %10, align 4
  %275 = icmp sge i32 %274, 1024
  br i1 %275, label %276, label %298

276:                                              ; preds = %273
  %277 = load i32, i32* %10, align 4
  %278 = icmp sge i32 %277, 1024
  br i1 %278, label %279, label %297

279:                                              ; preds = %276
  %280 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %281 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %280, i32 0, i32 11
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @HIGH_COALESCE, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %279
  %286 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %287 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %286, i32 0, i32 12
  store i32 4, i32* %287, align 8
  %288 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %289 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %288, i32 0, i32 13
  store i32 8, i32* %289, align 4
  %290 = load %struct.net_device*, %struct.net_device** %2, align 8
  %291 = load i32, i32* @TX_INTR_COAL, align 4
  %292 = call i32 @amd8111e_set_coalesce(%struct.net_device* %290, i32 %291)
  %293 = load i64, i64* @HIGH_COALESCE, align 8
  %294 = load %struct.amd8111e_coalesce_conf*, %struct.amd8111e_coalesce_conf** %4, align 8
  %295 = getelementptr inbounds %struct.amd8111e_coalesce_conf, %struct.amd8111e_coalesce_conf* %294, i32 0, i32 11
  store i64 %293, i64* %295, align 8
  br label %296

296:                                              ; preds = %285, %279
  br label %297

297:                                              ; preds = %296, %276
  br label %298

298:                                              ; preds = %297, %273
  br label %299

299:                                              ; preds = %298, %272
  br label %300

300:                                              ; preds = %299, %248
  br label %301

301:                                              ; preds = %300, %224
  br label %302

302:                                              ; preds = %301, %200
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @amd8111e_set_coalesce(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
