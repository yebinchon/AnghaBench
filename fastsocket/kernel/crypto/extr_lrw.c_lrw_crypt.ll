; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_lrw_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_lrw_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.lrw_crypt_req = type { i32, i32, i32 (i32, i32*, i32)*, i32*, %struct.lrw_table_ctx* }
%struct.lrw_table_ctx = type { i32*, i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@LRW_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrw_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, %struct.lrw_crypt_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lrw_crypt_req*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lrw_table_ctx*, align 8
  %15 = alloca %struct.blkcipher_walk, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.lrw_crypt_req* %4, %struct.lrw_crypt_req** %11, align 8
  %24 = load i32, i32* @LRW_BLOCK_SIZE, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lrw_crypt_req*, %struct.lrw_crypt_req** %11, align 8
  %26 = getelementptr inbounds %struct.lrw_crypt_req, %struct.lrw_crypt_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load %struct.lrw_crypt_req*, %struct.lrw_crypt_req** %11, align 8
  %31 = getelementptr inbounds %struct.lrw_crypt_req, %struct.lrw_crypt_req* %30, i32 0, i32 4
  %32 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %31, align 8
  store %struct.lrw_table_ctx* %32, %struct.lrw_table_ctx** %14, align 8
  %33 = load %struct.lrw_crypt_req*, %struct.lrw_crypt_req** %11, align 8
  %34 = getelementptr inbounds %struct.lrw_crypt_req, %struct.lrw_crypt_req* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %21, align 8
  %36 = load i32, i32* %13, align 4
  %37 = icmp ult i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %15, %struct.scatterlist* %40, %struct.scatterlist* %41, i32 %42)
  %44 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %45 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %44, %struct.blkcipher_walk* %15)
  store i32 %45, i32* %22, align 4
  %46 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %6, align 4
  br label %204

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = udiv i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %18, align 8
  %64 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %19, align 8
  %69 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %17, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %21, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %21, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %14, align 8
  %79 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @gf128mul_64k_bbe(i32* %77, i32 %80)
  store i32 0, i32* %23, align 4
  br label %104

82:                                               ; No predecessors!
  br label %83

83:                                               ; preds = %186, %82
  br label %84

84:                                               ; preds = %174, %83
  store i32 0, i32* %23, align 4
  br label %85

85:                                               ; preds = %119, %84
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %85
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %23, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32*, i32** %20, align 8
  %95 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %14, align 8
  %96 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i64 @get_index128(i32* %98)
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @be128_xor(i32* %93, i32* %94, i32* %100)
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @inc(i32* %102)
  br label %104

104:                                              ; preds = %89, %52
  %105 = load i32*, i32** %21, align 8
  %106 = load i32, i32* %23, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %20, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* %23, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32*, i32** %20, align 8
  %114 = load i32*, i32** %18, align 8
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @be128_xor(i32* %112, i32* %113, i32* %117)
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %23, align 4
  br label %85

122:                                              ; preds = %85
  %123 = load %struct.lrw_crypt_req*, %struct.lrw_crypt_req** %11, align 8
  %124 = getelementptr inbounds %struct.lrw_crypt_req, %struct.lrw_crypt_req* %123, i32 0, i32 2
  %125 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %124, align 8
  %126 = load %struct.lrw_crypt_req*, %struct.lrw_crypt_req** %11, align 8
  %127 = getelementptr inbounds %struct.lrw_crypt_req, %struct.lrw_crypt_req* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul i32 %130, %131
  %133 = call i32 %125(i32 %128, i32* %129, i32 %132)
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %152, %122
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32*, i32** %21, align 8
  %148 = load i32, i32* %23, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @be128_xor(i32* %142, i32* %146, i32* %150)
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %23, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %23, align 4
  br label %134

155:                                              ; preds = %134
  %156 = load i32, i32* %16, align 4
  %157 = load i32*, i32** %18, align 8
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %18, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %19, align 8
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %19, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul i32 %164, %165
  %167 = load i32, i32* %10, align 4
  %168 = sub i32 %167, %166
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %12, align 4
  %171 = udiv i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @min(i32 %171, i32 %172)
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %155
  %175 = load i32, i32* %16, align 4
  %176 = icmp ugt i32 %175, 0
  br i1 %176, label %84, label %177

177:                                              ; preds = %174
  %178 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %178, %struct.blkcipher_walk* %15, i32 %179)
  store i32 %180, i32* %22, align 4
  %181 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  br label %202

186:                                              ; preds = %177
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %12, align 4
  %189 = udiv i32 %187, %188
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @min(i32 %189, i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  store i32* %196, i32** %18, align 8
  %197 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  store i32* %201, i32** %19, align 8
  br label %83

202:                                              ; preds = %185
  %203 = load i32, i32* %22, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %202, %50
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gf128mul_64k_bbe(i32*, i32) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i64 @get_index128(i32*) #1

declare dso_local i32 @inc(i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
