; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_fill_one_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_fill_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i64 }

@PPC4XX_LAST_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, i64*, i32*, i32*, i32*, i32*)* @crypto4xx_fill_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_fill_one_page(%struct.crypto4xx_device* %0, i64* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto4xx_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %18 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %6
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @phys_to_virt(i64 %23)
  %25 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %26 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %31 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %27, %34
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(i32 %24, i64 %39, i32 %42)
  %44 = load i32*, i32** %12, align 8
  store i32 0, i32* %44, align 4
  %45 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %46 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %52 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PPC4XX_LAST_SD, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %21
  %62 = load i32*, i32** %11, align 8
  store i32 0, i32* %62, align 4
  br label %67

63:                                               ; preds = %21
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %71 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  store i32 1, i32* %7, align 4
  br label %196

76:                                               ; preds = %6
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %80 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %144

83:                                               ; preds = %76
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @phys_to_virt(i64 %85)
  %87 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %88 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %93 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %89, %96
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %86, i64 %101, i32 %103)
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %111 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %83
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @PPC4XX_LAST_SD, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32*, i32** %11, align 8
  store i32 0, i32* %120, align 4
  br label %125

121:                                              ; preds = %114
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %121, %119
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load i32*, i32** %12, align 8
  store i32 0, i32* %131, align 4
  br label %143

132:                                              ; preds = %83
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %132, %125
  store i32 0, i32* %7, align 4
  br label %196

144:                                              ; preds = %76
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %148 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sle i32 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %152, align 4
  br label %158

154:                                              ; preds = %144
  %155 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %156 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i32 [ %153, %151 ], [ %157, %154 ]
  store i32 %159, i32* %14, align 4
  %160 = load i64*, i64** %9, align 8
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @phys_to_virt(i64 %161)
  %163 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %164 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  %169 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %165, %172
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %173, %176
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @memcpy(i32 %162, i64 %177, i32 %178)
  %180 = load i32*, i32** %12, align 8
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PPC4XX_LAST_SD, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %158
  %190 = load i32*, i32** %11, align 8
  store i32 0, i32* %190, align 4
  br label %195

191:                                              ; preds = %158
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %191, %189
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %143, %67
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @phys_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
