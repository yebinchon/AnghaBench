; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blowfish.c_bf_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blowfish.c_bf_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.bf_ctx = type { i32*, i32* }

@bf_sbox = common dso_local global i32* null, align 8
@bf_pbox = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i64*, i32)* @bf_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf_setkey(%struct.crypto_tfm* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %16 = call %struct.bf_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.bf_ctx* %16, %struct.bf_ctx** %7, align 8
  %17 = load %struct.bf_ctx*, %struct.bf_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.bf_ctx, %struct.bf_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.bf_ctx*, %struct.bf_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.bf_ctx, %struct.bf_ctx* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  store i16 0, i16* %10, align 2
  store i16 0, i16* %12, align 2
  br label %23

23:                                               ; preds = %48, %3
  %24 = load i16, i16* %10, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  store i16 0, i16* %11, align 2
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i16, i16* %11, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32*, i32** @bf_sbox, align 8
  %34 = load i16, i16* %12, align 2
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i16, i16* %12, align 2
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i16, i16* %11, align 2
  %44 = add i16 %43, 1
  store i16 %44, i16* %11, align 2
  %45 = load i16, i16* %12, align 2
  %46 = add i16 %45, 1
  store i16 %46, i16* %12, align 2
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i16, i16* %10, align 2
  %50 = add i16 %49, 1
  store i16 %50, i16* %10, align 2
  br label %23

51:                                               ; preds = %23
  store i16 0, i16* %10, align 2
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i16, i16* %10, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp slt i32 %54, 18
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32*, i32** @bf_pbox, align 8
  %58 = load i16, i16* %10, align 2
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i16, i16* %10, align 2
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %56
  %67 = load i16, i16* %10, align 2
  %68 = add i16 %67, 1
  store i16 %68, i16* %10, align 2
  br label %52

69:                                               ; preds = %52
  store i16 0, i16* %11, align 2
  store i16 0, i16* %10, align 2
  br label %70

70:                                               ; preds = %134, %69
  %71 = load i16, i16* %10, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp slt i32 %72, 18
  br i1 %73, label %74, label %137

74:                                               ; preds = %70
  %75 = load i64*, i64** %5, align 8
  %76 = load i16, i16* %11, align 2
  %77 = sext i16 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 24
  %82 = load i64*, i64** %5, align 8
  %83 = load i16, i16* %11, align 2
  %84 = sext i16 %83 to i32
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %6, align 4
  %87 = urem i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %82, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 %91, 16
  %93 = or i32 %81, %92
  %94 = load i64*, i64** %5, align 8
  %95 = load i16, i16* %11, align 2
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %96, 2
  %98 = load i32, i32* %6, align 4
  %99 = urem i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %94, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %103, 8
  %105 = or i32 %93, %104
  %106 = load i64*, i64** %5, align 8
  %107 = load i16, i16* %11, align 2
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %108, 3
  %110 = load i32, i32* %6, align 4
  %111 = urem i32 %109, %110
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %106, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = or i32 %105, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i16, i16* %10, align 2
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = xor i32 %121, %122
  %124 = load i32*, i32** %8, align 8
  %125 = load i16, i16* %10, align 2
  %126 = sext i16 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i16, i16* %11, align 2
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %129, 4
  %131 = load i32, i32* %6, align 4
  %132 = urem i32 %130, %131
  %133 = trunc i32 %132 to i16
  store i16 %133, i16* %11, align 2
  br label %134

134:                                              ; preds = %74
  %135 = load i16, i16* %10, align 2
  %136 = add i16 %135, 1
  store i16 %136, i16* %10, align 2
  br label %70

137:                                              ; preds = %70
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %139, align 4
  store i16 0, i16* %10, align 2
  br label %140

140:                                              ; preds = %163, %137
  %141 = load i16, i16* %10, align 2
  %142 = sext i16 %141 to i32
  %143 = icmp slt i32 %142, 18
  br i1 %143, label %144, label %168

144:                                              ; preds = %140
  %145 = load %struct.bf_ctx*, %struct.bf_ctx** %7, align 8
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %148 = call i32 @encrypt_block(%struct.bf_ctx* %145, i32* %146, i32* %147)
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = load i16, i16* %10, align 2
  %153 = sext i16 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i16, i16* %10, align 2
  %159 = sext i16 %158 to i32
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  store i32 %156, i32* %162, align 4
  br label %163

163:                                              ; preds = %144
  %164 = load i16, i16* %10, align 2
  %165 = sext i16 %164 to i32
  %166 = add nsw i32 %165, 2
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %10, align 2
  br label %140

168:                                              ; preds = %140
  store i16 0, i16* %10, align 2
  br label %169

169:                                              ; preds = %211, %168
  %170 = load i16, i16* %10, align 2
  %171 = sext i16 %170 to i32
  %172 = icmp slt i32 %171, 4
  br i1 %172, label %173, label %214

173:                                              ; preds = %169
  store i16 0, i16* %11, align 2
  %174 = load i16, i16* %10, align 2
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %175, 256
  %177 = trunc i32 %176 to i16
  store i16 %177, i16* %12, align 2
  br label %178

178:                                              ; preds = %201, %173
  %179 = load i16, i16* %11, align 2
  %180 = sext i16 %179 to i32
  %181 = icmp slt i32 %180, 256
  br i1 %181, label %182, label %210

182:                                              ; preds = %178
  %183 = load %struct.bf_ctx*, %struct.bf_ctx** %7, align 8
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %186 = call i32 @encrypt_block(%struct.bf_ctx* %183, i32* %184, i32* %185)
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i16, i16* %12, align 2
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = load i16, i16* %12, align 2
  %197 = sext i16 %196 to i32
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  store i32 %194, i32* %200, align 4
  br label %201

201:                                              ; preds = %182
  %202 = load i16, i16* %11, align 2
  %203 = sext i16 %202 to i32
  %204 = add nsw i32 %203, 2
  %205 = trunc i32 %204 to i16
  store i16 %205, i16* %11, align 2
  %206 = load i16, i16* %12, align 2
  %207 = sext i16 %206 to i32
  %208 = add nsw i32 %207, 2
  %209 = trunc i32 %208 to i16
  store i16 %209, i16* %12, align 2
  br label %178

210:                                              ; preds = %178
  br label %211

211:                                              ; preds = %210
  %212 = load i16, i16* %10, align 2
  %213 = add i16 %212, 1
  store i16 %213, i16* %10, align 2
  br label %169

214:                                              ; preds = %169
  ret i32 0
}

declare dso_local %struct.bf_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @encrypt_block(%struct.bf_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
