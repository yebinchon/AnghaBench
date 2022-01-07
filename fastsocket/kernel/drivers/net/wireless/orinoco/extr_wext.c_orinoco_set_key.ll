; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@SMALL_KEY_SIZE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*, i32, i32, i32*, i32, i32*, i32)* @orinoco_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_set_key(%struct.orinoco_private* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.orinoco_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kzfree(i32* %23)
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %26 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kzfree(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %7
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %42 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32* %40, i32** %47, align 8
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %49 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  br label %202

58:                                               ; preds = %36
  br label %67

59:                                               ; preds = %7
  %60 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %61 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %76 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32* %74, i32** %81, align 8
  %82 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %83 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %70
  br label %185

92:                                               ; preds = %70
  br label %101

93:                                               ; preds = %67
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %95 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %93, %92
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %104 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %102, i32* %109, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %112 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %101
  %121 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %122 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @memcpy(i32* %128, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %120, %101
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %137 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @memcpy(i32* %143, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %135, %132
  %148 = load i32, i32* %11, align 4
  switch i32 %148, label %176 [
    i32 129, label %149
    i32 128, label %158
    i32 130, label %175
  ]

149:                                              ; preds = %147
  %150 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %151 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %152 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  store i64 %150, i64* %157, align 8
  br label %184

158:                                              ; preds = %147
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @SMALL_KEY_SIZE, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  br label %166

164:                                              ; preds = %158
  %165 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i64 [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %169 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  store i64 %167, i64* %174, align 8
  br label %184

175:                                              ; preds = %147
  br label %176

176:                                              ; preds = %147, %175
  %177 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %178 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %176, %166, %149
  store i32 0, i32* %8, align 4
  br label %226

185:                                              ; preds = %91
  %186 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %187 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @kfree(i32* %193)
  %195 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %196 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 3
  store i32* null, i32** %201, align 8
  br label %202

202:                                              ; preds = %185, %57
  %203 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %204 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  %210 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %211 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %218 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %202, %184
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
