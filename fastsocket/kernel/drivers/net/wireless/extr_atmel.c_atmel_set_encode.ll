; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.atmel_private = type { i32, i32*, i32, i32, i32, i8*, i32* }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@CIPHER_SUITE_WEP_128 = common dso_local global i8* null, align 8
@CIPHER_SUITE_WEP_64 = common dso_local global i8* null, align 8
@IW_ENCODE_MODE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@CIPHER_SUITE_NONE = common dso_local global i8* null, align 8
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %14)
  store %struct.atmel_private* %15, %struct.atmel_private** %10, align 8
  %16 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %17 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %149

20:                                               ; preds = %4
  %21 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %25 = and i32 %23, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %28 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 13
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %241

37:                                               ; preds = %20
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %11, align 4
  br label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %48 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %43
  %50 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %51 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %56 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 13, i32* %60, align 4
  br label %81

61:                                               ; preds = %49
  %62 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %68 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 5, i32* %72, align 4
  br label %80

73:                                               ; preds = %61
  %74 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %75 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %83 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %81
  %89 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %90 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memset(i32 %95, i32 0, i32 13)
  %97 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %98 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %106 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32 %103, i8* %104, i32 %107)
  br label %109

109:                                              ; preds = %88, %81
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %148

113:                                              ; preds = %109
  %114 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %115 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %113
  %123 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %124 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  %125 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %126 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  %127 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %128 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 5
  br i1 %134, label %135, label %141

135:                                              ; preds = %122
  %136 = load i8*, i8** @CIPHER_SUITE_WEP_128, align 8
  %137 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %138 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 4
  store i32 2, i32* %140, align 8
  br label %147

141:                                              ; preds = %122
  %142 = load i8*, i8** @CIPHER_SUITE_WEP_64, align 8
  %143 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %144 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %146 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %145, i32 0, i32 4
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %113, %109
  br label %177

149:                                              ; preds = %4
  %150 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %151 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %154 = and i32 %152, %153
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %149
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %164 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %176

165:                                              ; preds = %158, %149
  %166 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %167 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IW_ENCODE_MODE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %241

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %161
  br label %177

177:                                              ; preds = %176, %148
  %178 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %179 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %186 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  %187 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %188 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %187, i32 0, i32 4
  store i32 0, i32* %188, align 8
  %189 = load i8*, i8** @CIPHER_SUITE_NONE, align 8
  %190 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %191 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  br label %218

192:                                              ; preds = %177
  %193 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %194 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  %195 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %196 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %199 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 5
  br i1 %204, label %205, label %211

205:                                              ; preds = %192
  %206 = load i8*, i8** @CIPHER_SUITE_WEP_128, align 8
  %207 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %208 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  %209 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %210 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %209, i32 0, i32 4
  store i32 2, i32* %210, align 8
  br label %217

211:                                              ; preds = %192
  %212 = load i8*, i8** @CIPHER_SUITE_WEP_64, align 8
  %213 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %214 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  %215 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %216 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %215, i32 0, i32 4
  store i32 1, i32* %216, align 8
  br label %217

217:                                              ; preds = %211, %205
  br label %218

218:                                              ; preds = %217, %184
  %219 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %220 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %227 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %226, i32 0, i32 3
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %225, %218
  %229 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %230 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %237 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %236, i32 0, i32 3
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %228
  %239 = load i32, i32* @EINPROGRESS, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %238, %172, %34
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
