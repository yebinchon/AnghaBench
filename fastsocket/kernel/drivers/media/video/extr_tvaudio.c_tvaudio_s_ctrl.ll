; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.CHIPSTATE = type { i32, i64, i32, i32, i32, i32, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32, i32 (i32)*, i32, i32 (i32)*, i32, i32 (i32)*, i32, i32, i32, i32*, i32, i32 }

@CHIP_HAS_INPUTSEL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CHIP_HAS_VOLUME = common dso_local global i32 0, align 4
@CHIP_HAS_BASSTREBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tvaudio_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %12)
  store %struct.CHIPSTATE* %13, %struct.CHIPSTATE** %6, align 8
  %14 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %15 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %14, i32 0, i32 6
  %16 = load %struct.CHIPDESC*, %struct.CHIPDESC** %15, align 8
  store %struct.CHIPDESC* %16, %struct.CHIPDESC** %7, align 8
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %249 [
    i32 130, label %20
    i32 128, label %81
    i32 132, label %154
    i32 131, label %197
    i32 129, label %223
  ]

20:                                               ; preds = %2
  %21 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %22 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CHIP_HAS_INPUTSEL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %249

28:                                               ; preds = %20
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %252

41:                                               ; preds = %33
  %42 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %46 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %48 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %41
  %52 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %53 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %54 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %57 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %60 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @chip_write_masked(%struct.CHIPSTATE* %52, i32 %55, i32 %58, i32 %61)
  br label %80

63:                                               ; preds = %41
  %64 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %65 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %66 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %69 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %72 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %77 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @chip_write_masked(%struct.CHIPSTATE* %64, i32 %67, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %63, %51
  store i32 0, i32* %3, align 4
  br label %252

81:                                               ; preds = %2
  %82 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %83 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %249

89:                                               ; preds = %81
  %90 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %91 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %94 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @max(i32 %92, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %101 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %104 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @min(i32 %102, i32 %105)
  %107 = mul nsw i32 32768, %106
  %108 = load i32, i32* %8, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %9, align 4
  br label %111

110:                                              ; preds = %89
  store i32 32768, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %99
  %112 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 65536, %115
  %117 = call i32 @min(i32 %116, i32 32768)
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sdiv i32 %119, 32768
  %121 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %122 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %124, 32768
  %126 = call i32 @min(i32 %123, i32 %125)
  %127 = sdiv i32 %126, 32768
  %128 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %129 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %131 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %132 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %135 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %134, i32 0, i32 5
  %136 = load i32 (i32)*, i32 (i32)** %135, align 8
  %137 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %138 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 %136(i32 %139)
  %141 = call i32 @chip_write(%struct.CHIPSTATE* %130, i32 %133, i32 %140)
  %142 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %143 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %144 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %147 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %146, i32 0, i32 5
  %148 = load i32 (i32)*, i32 (i32)** %147, align 8
  %149 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %150 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 %148(i32 %151)
  %153 = call i32 @chip_write(%struct.CHIPSTATE* %142, i32 %145, i32 %152)
  store i32 0, i32* %3, align 4
  br label %252

154:                                              ; preds = %2
  %155 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %156 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  br label %249

162:                                              ; preds = %154
  %163 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %164 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %167 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @max(i32 %165, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %171 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %11, align 4
  %173 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %174 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %175 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %178 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %177, i32 0, i32 5
  %179 = load i32 (i32)*, i32 (i32)** %178, align 8
  %180 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %181 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 %179(i32 %182)
  %184 = call i32 @chip_write(%struct.CHIPSTATE* %173, i32 %176, i32 %183)
  %185 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %186 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %187 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %190 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %189, i32 0, i32 5
  %191 = load i32 (i32)*, i32 (i32)** %190, align 8
  %192 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %193 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 %191(i32 %194)
  %196 = call i32 @chip_write(%struct.CHIPSTATE* %185, i32 %188, i32 %195)
  store i32 0, i32* %3, align 4
  br label %252

197:                                              ; preds = %2
  %198 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %199 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CHIP_HAS_BASSTREBLE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %197
  br label %249

205:                                              ; preds = %197
  %206 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %207 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %210 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %212 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %213 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %216 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %215, i32 0, i32 3
  %217 = load i32 (i32)*, i32 (i32)** %216, align 8
  %218 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %219 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %217(i32 %220)
  %222 = call i32 @chip_write(%struct.CHIPSTATE* %211, i32 %214, i32 %221)
  store i32 0, i32* %3, align 4
  br label %252

223:                                              ; preds = %2
  %224 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %225 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CHIP_HAS_BASSTREBLE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  br label %249

231:                                              ; preds = %223
  %232 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %233 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %236 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %238 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %239 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %242 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %241, i32 0, i32 1
  %243 = load i32 (i32)*, i32 (i32)** %242, align 8
  %244 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %245 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = call i32 %243(i32 %246)
  %248 = call i32 @chip_write(%struct.CHIPSTATE* %237, i32 %240, i32 %247)
  store i32 0, i32* %3, align 4
  br label %252

249:                                              ; preds = %2, %230, %204, %161, %88, %27
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %249, %231, %205, %162, %111, %80, %38
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @chip_write_masked(%struct.CHIPSTATE*, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
