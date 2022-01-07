; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_i2c_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i2c 0x%02x -> [0x%02x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @w9968cf_i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_i2c_w(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 5376, i32 0
  %20 = or i32 2095, %19
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 16384, i32 0
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 5, i32 0
  %41 = or i32 8322, %40
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 336, i32 0
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 21504, i32 0
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.sd*, %struct.sd** %4, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 21, i32 0
  %73 = or i32 33288, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sd*, %struct.sd** %4, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1344, i32 0
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.sd*, %struct.sd** %4, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 20480, i32 0
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 2
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = or i32 7456, %104
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sd*, %struct.sd** %4, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 84, i32 0
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.sd*, %struct.sd** %4, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @w9968cf_write_fsb(%struct.sd* %119, i32* %120)
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 128
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 21, i32 0
  %127 = or i32 33288, %126
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, 64
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1344, i32 0
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, 32
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 20480, i32 0
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 32
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = or i32 2080, %152
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, 16
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 84, i32 0
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, 8
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 5376, i32 0
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 16384, i32 0
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %5, align 4
  %184 = and i32 %183, 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 5, i32 0
  %188 = or i32 8322, %187
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, 2
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 336, i32 0
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %5, align 4
  %201 = and i32 %200, 1
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 21504, i32 0
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 29, i32* %210, align 4
  %211 = load %struct.sd*, %struct.sd** %4, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @w9968cf_write_fsb(%struct.sd* %211, i32* %212)
  %214 = load i32, i32* %6, align 4
  %215 = and i32 %214, 128
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 21, i32 0
  %219 = or i32 33288, %218
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %6, align 4
  %223 = and i32 %222, 64
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 1344, i32 0
  %227 = load i32*, i32** %7, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* %6, align 4
  %232 = and i32 %231, 32
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 20480, i32 0
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %6, align 4
  %241 = and i32 %240, 32
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 1, i32 0
  %245 = or i32 2080, %244
  %246 = load i32*, i32** %7, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %6, align 4
  %249 = and i32 %248, 16
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 84, i32 0
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %6, align 4
  %258 = and i32 %257, 8
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 5376, i32 0
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* %6, align 4
  %267 = and i32 %266, 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 16384, i32 0
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %6, align 4
  %276 = and i32 %275, 4
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 5, i32 0
  %280 = or i32 8322, %279
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %6, align 4
  %284 = and i32 %283, 2
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 336, i32 0
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* %6, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 21504, i32 0
  %297 = load i32*, i32** %7, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 2
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  %301 = load i32*, i32** %7, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  store i32 65053, i32* %302, align 4
  %303 = load %struct.sd*, %struct.sd** %4, align 8
  %304 = load i32*, i32** %7, align 8
  %305 = call i32 @w9968cf_write_fsb(%struct.sd* %303, i32* %304)
  %306 = load i32, i32* @D_USBO, align 4
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @PDEBUG(i32 %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %307, i32 %308)
  ret void
}

declare dso_local i32 @w9968cf_write_fsb(%struct.sd*, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
