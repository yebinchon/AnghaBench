; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_get_free_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_get_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ISDN_FEATURE_L2_V11096 = common dso_local global i32 0, align 4
@ISDN_FEATURE_L2_V11019 = common dso_local global i32 0, align 4
@ISDN_FEATURE_L2_V11038 = common dso_local global i32 0, align 4
@ISDN_MAX_CHANNELS = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_6__* null, align 8
@ISDN_USAGE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ISDN_USAGE_DISABLED = common dso_local global i32 0, align 4
@DRV_FLAG_RUNNING = common dso_local global i32 0, align 4
@ISDN_FEATURE_L2_TRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_get_free_channel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 65536, %20
  %22 = or i32 %19, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 65536, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* @ISDN_FEATURE_L2_V11096, align 4
  %29 = load i32, i32* @ISDN_FEATURE_L2_V11019, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ISDN_FEATURE_L2_V11038, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %237, %6
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %240

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @USG_NONE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %236

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %236

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ISDN_USAGE_EXCLUSIVE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %58
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %81, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80, %76
  br label %237

91:                                               ; preds = %80, %58
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @isdn_map_eaz2msn(i8* %92, i32 %93)
  %95 = call i32 @strcmp(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %237

98:                                               ; preds = %91
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ISDN_USAGE_DISABLED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %237

110:                                              ; preds = %98
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %113, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @DRV_FLAG_RUNNING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %235

123:                                              ; preds = %110
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %126, i64 %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %170, label %139

139:                                              ; preds = %123
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %142, i64 %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %234

155:                                              ; preds = %139
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %158, i64 %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ISDN_FEATURE_L2_TRANS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %234

170:                                              ; preds = %155, %123
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %173, %170
  %177 = load i32, i32* @ISDN_USAGE_EXCLUSIVE, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %177
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %186
  store i32 %194, i32* %192, align 4
  %195 = call i32 (...) @isdn_info_update()
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %7, align 4
  br label %241

197:                                              ; preds = %173
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %232

201:                                              ; preds = %197
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %202, %209
  br i1 %210, label %211, label %232

211:                                              ; preds = %201
  %212 = load i32, i32* @ISDN_USAGE_EXCLUSIVE, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, %212
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %221
  store i32 %229, i32* %227, align 4
  %230 = call i32 (...) @isdn_info_update()
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %7, align 4
  br label %241

232:                                              ; preds = %201, %197
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %155, %139
  br label %235

235:                                              ; preds = %234, %110
  br label %236

236:                                              ; preds = %235, %49, %39
  br label %237

237:                                              ; preds = %236, %109, %97, %90
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %14, align 4
  br label %35

240:                                              ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %211, %176
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i64 @USG_NONE(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @isdn_map_eaz2msn(i8*, i32) #1

declare dso_local i32 @isdn_info_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
