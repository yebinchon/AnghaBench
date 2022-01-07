; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i64, i32, i32, i64 }
%struct.ethtool_cmd = type { i32, i64, i32, i64, i64, i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@DE_MEDIA_AUI = common dso_local global i64 0, align 8
@ADVERTISED_AUI = common dso_local global i32 0, align 4
@DE_MEDIA_BNC = common dso_local global i64 0, align 8
@ADVERTISED_BNC = common dso_local global i32 0, align 4
@DE_MEDIA_TP_AUTO = common dso_local global i64 0, align 8
@DE_MEDIA_TP_FD = common dso_local global i64 0, align 8
@DE_MEDIA_TP = common dso_local global i64 0, align 8
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*, %struct.ethtool_cmd*)* @__de_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__de_set_settings(%struct.de_private* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.de_private*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SPEED_10, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %255

26:                                               ; preds = %18, %13, %2
  %27 = load %struct.de_private*, %struct.de_private** %4, align 8
  %28 = getelementptr inbounds %struct.de_private, %struct.de_private* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %255

39:                                               ; preds = %31, %26
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DUPLEX_HALF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DUPLEX_FULL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %255

54:                                               ; preds = %45, %39
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PORT_TP, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 129
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 128
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %255

73:                                               ; preds = %65, %60, %54
  %74 = load %struct.de_private*, %struct.de_private** %4, align 8
  %75 = getelementptr inbounds %struct.de_private, %struct.de_private* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %255

86:                                               ; preds = %78, %73
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @XCVR_INTERNAL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %255

95:                                               ; preds = %86
  %96 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AUTONEG_DISABLE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AUTONEG_ENABLE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %255

110:                                              ; preds = %101, %95
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.de_private*, %struct.de_private** %4, align 8
  %115 = getelementptr inbounds %struct.de_private, %struct.de_private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %255

123:                                              ; preds = %110
  %124 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AUTONEG_ENABLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %255

139:                                              ; preds = %129, %123
  %140 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %167 [
    i32 129, label %143
    i32 128, label %155
  ]

143:                                              ; preds = %139
  %144 = load i64, i64* @DE_MEDIA_AUI, align 8
  store i64 %144, i64* %6, align 8
  %145 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ADVERTISED_AUI, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %255

154:                                              ; preds = %143
  br label %209

155:                                              ; preds = %139
  %156 = load i64, i64* @DE_MEDIA_BNC, align 8
  store i64 %156, i64* %6, align 8
  %157 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %158 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ADVERTISED_BNC, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %255

166:                                              ; preds = %155
  br label %209

167:                                              ; preds = %139
  %168 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %169 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AUTONEG_ENABLE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i64, i64* @DE_MEDIA_TP_AUTO, align 8
  store i64 %174, i64* %6, align 8
  br label %186

175:                                              ; preds = %167
  %176 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %177 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DUPLEX_FULL, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i64, i64* @DE_MEDIA_TP_FD, align 8
  store i64 %182, i64* %6, align 8
  br label %185

183:                                              ; preds = %175
  %184 = load i64, i64* @DE_MEDIA_TP, align 8
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %183, %181
  br label %186

186:                                              ; preds = %185, %173
  %187 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %188 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ADVERTISED_TP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %255

196:                                              ; preds = %186
  %197 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %198 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %201 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %199, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %255

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %166, %154
  %210 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %211 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @AUTONEG_ENABLE, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 0, i32 1
  store i32 %216, i32* %7, align 4
  %217 = load i64, i64* %6, align 8
  %218 = load %struct.de_private*, %struct.de_private** %4, align 8
  %219 = getelementptr inbounds %struct.de_private, %struct.de_private* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %217, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %209
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.de_private*, %struct.de_private** %4, align 8
  %225 = getelementptr inbounds %struct.de_private, %struct.de_private* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %222
  %229 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %230 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.de_private*, %struct.de_private** %4, align 8
  %233 = getelementptr inbounds %struct.de_private, %struct.de_private* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %231, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %255

237:                                              ; preds = %228, %222, %209
  %238 = load %struct.de_private*, %struct.de_private** %4, align 8
  %239 = call i32 @de_link_down(%struct.de_private* %238)
  %240 = load %struct.de_private*, %struct.de_private** %4, align 8
  %241 = call i32 @de_stop_rxtx(%struct.de_private* %240)
  %242 = load i64, i64* %6, align 8
  %243 = load %struct.de_private*, %struct.de_private** %4, align 8
  %244 = getelementptr inbounds %struct.de_private, %struct.de_private* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.de_private*, %struct.de_private** %4, align 8
  %247 = getelementptr inbounds %struct.de_private, %struct.de_private* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  %248 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %249 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.de_private*, %struct.de_private** %4, align 8
  %252 = getelementptr inbounds %struct.de_private, %struct.de_private* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load %struct.de_private*, %struct.de_private** %4, align 8
  %254 = call i32 @de_set_media(%struct.de_private* %253)
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %237, %236, %205, %193, %163, %151, %136, %120, %107, %92, %83, %70, %51, %36, %23
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @de_link_down(%struct.de_private*) #1

declare dso_local i32 @de_stop_rxtx(%struct.de_private*) #1

declare dso_local i32 @de_set_media(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
