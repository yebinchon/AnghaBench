; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_ReadAndClearStats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_ReadAndClearStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TLAN_GOOD_TX_FRMS = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i64 0, align 8
@TLAN_DIO_DATA = common dso_local global i64 0, align 8
@TLAN_GOOD_RX_FRMS = common dso_local global i32 0, align 4
@TLAN_DEFERRED_TX = common dso_local global i32 0, align 4
@TLAN_MULTICOL_FRMS = common dso_local global i32 0, align 4
@TLAN_EXCESSCOL_FRMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @TLan_ReadAndClearStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_ReadAndClearStats(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @TLAN_GOOD_TX_FRMS, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TLAN_DIO_ADR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outw(i32 %17, i64 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLAN_DIO_DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TLAN_DIO_DATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = call i32 @inb(i64 %35)
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TLAN_DIO_DATA, align 8
  %44 = add nsw i64 %42, %43
  %45 = add nsw i64 %44, 2
  %46 = call i32 @inb(i64 %45)
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TLAN_DIO_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = add nsw i64 %54, 3
  %56 = call i32 @inb(i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @TLAN_GOOD_RX_FRMS, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TLAN_DIO_ADR, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 %57, i64 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TLAN_DIO_DATA, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TLAN_DIO_DATA, align 8
  %74 = add nsw i64 %72, %73
  %75 = add nsw i64 %74, 1
  %76 = call i32 @inb(i64 %75)
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TLAN_DIO_DATA, align 8
  %84 = add nsw i64 %82, %83
  %85 = add nsw i64 %84, 2
  %86 = call i32 @inb(i64 %85)
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TLAN_DIO_DATA, align 8
  %94 = add nsw i64 %92, %93
  %95 = add nsw i64 %94, 3
  %96 = call i32 @inb(i64 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @TLAN_DEFERRED_TX, align 4
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TLAN_DIO_ADR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outw(i32 %97, i64 %102)
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TLAN_DIO_DATA, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @inb(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TLAN_DIO_DATA, align 8
  %114 = add nsw i64 %112, %113
  %115 = add nsw i64 %114, 1
  %116 = call i32 @inb(i64 %115)
  %117 = shl i32 %116, 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TLAN_DIO_DATA, align 8
  %124 = add nsw i64 %122, %123
  %125 = add nsw i64 %124, 2
  %126 = call i32 @inb(i64 %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TLAN_DIO_DATA, align 8
  %131 = add nsw i64 %129, %130
  %132 = add nsw i64 %131, 3
  %133 = call i32 @inb(i64 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @TLAN_MULTICOL_FRMS, align 4
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TLAN_DIO_ADR, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outw(i32 %134, i64 %139)
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TLAN_DIO_DATA, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @inb(i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TLAN_DIO_DATA, align 8
  %151 = add nsw i64 %149, %150
  %152 = add nsw i64 %151, 1
  %153 = call i32 @inb(i64 %152)
  %154 = shl i32 %153, 8
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %12, align 4
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TLAN_DIO_DATA, align 8
  %161 = add nsw i64 %159, %160
  %162 = add nsw i64 %161, 2
  %163 = call i32 @inb(i64 %162)
  store i32 %163, i32* %13, align 4
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TLAN_DIO_DATA, align 8
  %168 = add nsw i64 %166, %167
  %169 = add nsw i64 %168, 3
  %170 = call i32 @inb(i64 %169)
  %171 = shl i32 %170, 8
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* @TLAN_EXCESSCOL_FRMS, align 4
  %175 = load %struct.net_device*, %struct.net_device** %3, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TLAN_DIO_ADR, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outw(i32 %174, i64 %179)
  %181 = load %struct.net_device*, %struct.net_device** %3, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TLAN_DIO_DATA, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @inb(i64 %185)
  store i32 %186, i32* %14, align 4
  %187 = load %struct.net_device*, %struct.net_device** %3, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @TLAN_DIO_DATA, align 8
  %191 = add nsw i64 %189, %190
  %192 = add nsw i64 %191, 1
  %193 = call i32 @inb(i64 %192)
  store i32 %193, i32* %15, align 4
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TLAN_DIO_DATA, align 8
  %198 = add nsw i64 %196, %197
  %199 = add nsw i64 %198, 2
  %200 = call i32 @inb(i64 %199)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %276

203:                                              ; preds = %2
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.net_device*, %struct.net_device** %3, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %204
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %212, %213
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %214
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.net_device*, %struct.net_device** %3, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %220
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %226, %227
  %229 = load %struct.net_device*, %struct.net_device** %3, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, %228
  store i32 %233, i32* %231, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %236, %237
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %238, %239
  %241 = load %struct.net_device*, %struct.net_device** %3, align 8
  %242 = getelementptr inbounds %struct.net_device, %struct.net_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %240
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.net_device*, %struct.net_device** %3, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, %246
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.net_device*, %struct.net_device** %3, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %252
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.net_device*, %struct.net_device** %3, align 8
  %260 = getelementptr inbounds %struct.net_device, %struct.net_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, %258
  store i32 %263, i32* %261, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load %struct.net_device*, %struct.net_device** %3, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, %264
  store i32 %269, i32* %267, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load %struct.net_device*, %struct.net_device** %3, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, %270
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %203, %2
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
