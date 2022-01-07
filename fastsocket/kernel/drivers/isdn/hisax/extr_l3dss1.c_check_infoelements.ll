; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_check_infoelements.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_check_infoelements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@L3_DEB_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"check IE shift%scodeset %d->%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" locking \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@comp_required = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"check IE shift back codeset %d->%d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"check IE MT(%x) %d/%d/%d/%d\00", align 1
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@ERR_IE_UNRECOGNIZED = common dso_local global i32 0, align 4
@ERR_IE_LENGTH = common dso_local global i32 0, align 4
@ERR_IE_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l3_process*, %struct.sk_buff*, i32*)* @check_infoelements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_infoelements(%struct.l3_process* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l3_process*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %10, align 8
  %30 = load i32, i32* %28, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %177, %87, %3
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %40 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %178

53:                                               ; preds = %39
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 240
  %57 = icmp eq i32 %56, 144
  br i1 %57, label %58, label %90

58:                                               ; preds = %53
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %20, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 7
  store i32 %62, i32* %19, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %21, align 4
  br label %69

68:                                               ; preds = %58
  store i32 1, i32* %21, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %71 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @L3_DEB_CHECK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %78 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 (i32, i8*, ...) @l3_debug(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %76, %69
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %10, align 8
  br label %39

90:                                               ; preds = %53
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %129, label %93

93:                                               ; preds = %90
  %94 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @ie_in_set(%struct.l3_process* %94, i32 %96, i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %100
  br label %128

114:                                              ; preds = %93
  %115 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** @comp_required, align 8
  %119 = call i32 @ie_in_set(%struct.l3_process* %115, i32 %117, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %127

124:                                              ; preds = %114
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %113
  br label %129

129:                                              ; preds = %128, %90
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %10, align 8
  %132 = load i32, i32* %130, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, 128
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 1, i32* %12, align 4
  br label %147

137:                                              ; preds = %129
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %10, align 8
  %140 = load i32, i32* %138, align 4
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %137, %136
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @getmax_ie_len(i32 %152)
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %155, %150, %147
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %177, label %161

161:                                              ; preds = %158
  %162 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %163 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @L3_DEB_CHECK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %170 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = call i32 (i32, i8*, ...) @l3_debug(i32 %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %168, %161
  %176 = load i32, i32* %20, align 4
  store i32 %176, i32* %19, align 4
  store i32 1, i32* %21, align 4
  br label %177

177:                                              ; preds = %175, %158
  br label %39

178:                                              ; preds = %39
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %18, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %16, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* %15, align 4
  %185 = or i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %225

187:                                              ; preds = %178
  %188 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %189 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @L3_DEB_CHECK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %196 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i32 (i32, i8*, ...) @l3_debug(i32 %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %194, %187
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  store i32 %208, i32* %4, align 4
  br label %226

209:                                              ; preds = %204
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* @ERR_IE_UNRECOGNIZED, align 4
  store i32 %213, i32* %4, align 4
  br label %226

214:                                              ; preds = %209
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* @ERR_IE_LENGTH, align 4
  store i32 %218, i32* %4, align 4
  br label %226

219:                                              ; preds = %214
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* @ERR_IE_SEQUENCE, align 4
  store i32 %223, i32* %4, align 4
  br label %226

224:                                              ; preds = %219
  br label %225

225:                                              ; preds = %224, %178
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %222, %217, %212, %207
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @l3_debug(i32, i8*, ...) #1

declare dso_local i32 @ie_in_set(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @getmax_ie_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
