; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX4_EN_NUM_SELF_TEST = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@mlx4_en_test_names = common dso_local global i32* null, align 8
@MLX4_DEV_CAP_FLAG_UC_LOOPBACK = common dso_local global i32 0, align 4
@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@main_strings = common dso_local global i32* null, align 8
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PKT_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tx%d_packets\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx%d_bytes\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rx%d_packets\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rx%d_bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @mlx4_en_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %249 [
    i32 128, label %13
    i32 129, label %70
  ]

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %17 = sub nsw i32 %16, 2
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32*, i32** @mlx4_en_test_names, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i32* %25, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MLX4_DEV_CAP_FLAG_UC_LOOPBACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32*, i32** @mlx4_en_test_names, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcpy(i32* %58, i32 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %48

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %35
  br label %249

70:                                               ; preds = %3
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %148, label %75

75:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NUM_MAIN_STATS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %85 = mul nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32*, i32** @main_strings, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcpy(i32* %87, i32 %92)
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %76

97:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @NUM_PORT_STATS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %107 = mul nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32*, i32** @main_strings, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @NUM_MAIN_STATS, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strcpy(i32* %109, i32 %116)
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %98

121:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @NUM_PKT_STATS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %131 = mul nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32*, i32** @main_strings, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @NUM_MAIN_STATS, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* @NUM_PORT_STATS, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @strcpy(i32* %133, i32 %142)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %122

147:                                              ; preds = %122
  br label %190

148:                                              ; preds = %70
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %186, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @NUM_MAIN_STATS, align 4
  %152 = load i32, i32* @NUM_PORT_STATS, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %189

155:                                              ; preds = %149
  %156 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = ashr i32 %158, %159
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %155
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %168 = mul nsw i32 %165, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load i32*, i32** @main_strings, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @strcpy(i32* %170, i32 %175)
  br label %177

177:                                              ; preds = %163, %155
  %178 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %189

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %149

189:                                              ; preds = %184, %149
  br label %190

190:                                              ; preds = %189, %147
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %216, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %194 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %191
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %202 = mul nsw i32 %199, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @sprintf(i32* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %211 = mul nsw i32 %208, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @sprintf(i32* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %197
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %191

219:                                              ; preds = %191
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %245, %219
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %220
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %231 = mul nsw i32 %228, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %227, i64 %232
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @sprintf(i32* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %240 = mul nsw i32 %237, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @sprintf(i32* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %226
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %9, align 4
  br label %220

248:                                              ; preds = %220
  br label %249

249:                                              ; preds = %3, %248, %69
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
