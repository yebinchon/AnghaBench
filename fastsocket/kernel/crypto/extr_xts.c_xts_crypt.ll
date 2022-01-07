; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_xts_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_xts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.xts_crypt_req = type { i32, i32, i32 (i32, i32*, i32)*, i32, i32 (i32, i32*, i64)*, i32* }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xts_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, %struct.xts_crypt_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xts_crypt_req*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.blkcipher_walk, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xts_crypt_req* %4, %struct.xts_crypt_req** %11, align 8
  %22 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %24 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = udiv i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %29 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %19, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %14, %struct.scatterlist* %35, %struct.scatterlist* %36, i32 %37)
  %39 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %40 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %39, %struct.blkcipher_walk* %14)
  store i32 %40, i32* %20, align 4
  %41 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %5
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %6, align 4
  br label %193

47:                                               ; preds = %5
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = udiv i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %16, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %17, align 8
  %63 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %64 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %63, i32 0, i32 4
  %65 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %64, align 8
  %66 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %67 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 %65(i32 %68, i32* %70, i64 %72)
  store i32 0, i32* %21, align 4
  br label %88

74:                                               ; No predecessors!
  br label %75

75:                                               ; preds = %175, %74
  br label %76

76:                                               ; preds = %158, %75
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32*, i32** %18, align 8
  %87 = call i32 @gf128mul_x_ble(i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %81, %47
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %18, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @be128_xor(i32* %96, i32* %97, i32* %101)
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %77

106:                                              ; preds = %77
  %107 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %108 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %107, i32 0, i32 2
  %109 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %108, align 8
  %110 = load %struct.xts_crypt_req*, %struct.xts_crypt_req** %11, align 8
  %111 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %12, align 4
  %116 = mul i32 %114, %115
  %117 = call i32 %109(i32 %112, i32* %113, i32 %116)
  store i32 0, i32* %21, align 4
  br label %118

118:                                              ; preds = %136, %106
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32*, i32** %19, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @be128_xor(i32* %126, i32* %130, i32* %134)
  br label %136

136:                                              ; preds = %122
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %21, align 4
  br label %118

139:                                              ; preds = %118
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %16, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32*, i32** %17, align 8
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %17, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %12, align 4
  %150 = mul i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = sub i32 %151, %150
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %12, align 4
  %155 = udiv i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @min(i32 %155, i32 %156)
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %15, align 4
  %160 = icmp ugt i32 %159, 0
  br i1 %160, label %76, label %161

161:                                              ; preds = %158
  %162 = load i32*, i32** %18, align 8
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  store i32 %163, i32* %166, align 4
  %167 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %167, %struct.blkcipher_walk* %14, i32 %168)
  store i32 %169, i32* %20, align 4
  %170 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %161
  br label %191

175:                                              ; preds = %161
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %12, align 4
  %178 = udiv i32 %176, %177
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @min(i32 %178, i32 %179)
  store i32 %180, i32* %15, align 4
  %181 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i32*
  store i32* %185, i32** %16, align 8
  %186 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i32*
  store i32* %190, i32** %17, align 8
  br label %75

191:                                              ; preds = %174
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191, %45
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gf128mul_x_ble(i32*, i32*) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
