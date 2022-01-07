; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ctr_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ctr_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.s390_aes_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.s390_aes_ctx*, %struct.blkcipher_walk*)* @ctr_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.s390_aes_ctx* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.s390_aes_ctx*, align 8
  %9 = alloca %struct.blkcipher_walk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.s390_aes_ctx* %2, %struct.s390_aes_ctx** %8, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %9, align 8
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %19, %struct.blkcipher_walk* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %28 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %209

33:                                               ; preds = %4
  %34 = load i32*, i32** @ctrblk, align 8
  %35 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %39 = call i32 @memcpy(i32* %34, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %155, %33
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %160

46:                                               ; preds = %40
  %47 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %48 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %16, align 8
  %52 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %53 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %17, align 8
  br label %57

57:                                               ; preds = %140, %46
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %155

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @PAGE_SIZE, align 4
  br label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = and i32 %68, %71
  br label %73

73:                                               ; preds = %67, %65
  %74 = phi i32 [ %66, %65 ], [ %72, %67 ]
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* @AES_BLOCK_SIZE, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %101, %73
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load i32*, i32** @ctrblk, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** @ctrblk, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %94 = call i32 @memcpy(i32* %84, i32* %92, i32 %93)
  %95 = load i32*, i32** @ctrblk, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %100 = call i32 @crypto_inc(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %76

105:                                              ; preds = %76
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32*, i32** @ctrblk, align 8
  %114 = call i32 @crypt_s390_kmctr(i64 %106, i32 %109, i32* %110, i32* %111, i32 %112, i32* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %118, %119
  br label %121

121:                                              ; preds = %117, %105
  %122 = phi i1 [ true, %105 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load i32*, i32** @ctrblk, align 8
  %130 = load i32*, i32** @ctrblk, align 8
  %131 = load i32, i32* %12, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %135 = sext i32 %134 to i64
  %136 = sub i64 0, %135
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %139 = call i32 @memcpy(i32* %129, i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %121
  %141 = load i32*, i32** @ctrblk, align 8
  %142 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %143 = call i32 @crypto_inc(i32* %141, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %16, align 8
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %16, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %17, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sub i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %57

155:                                              ; preds = %57
  %156 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %157 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %156, %struct.blkcipher_walk* %157, i32 %158)
  store i32 %159, i32* %10, align 4
  br label %40

160:                                              ; preds = %40
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %201

163:                                              ; preds = %160
  %164 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %165 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %16, align 8
  %169 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %170 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %17, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %17, align 8
  %179 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %180 = load i32*, i32** @ctrblk, align 8
  %181 = call i32 @crypt_s390_kmctr(i64 %174, i32 %177, i32* %26, i32* %178, i32 %179, i32* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %163
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %187 = icmp ne i32 %185, %186
  br label %188

188:                                              ; preds = %184, %163
  %189 = phi i1 [ true, %163 ], [ %187, %184 ]
  %190 = zext i1 %189 to i32
  %191 = call i32 @BUG_ON(i32 %190)
  %192 = load i32*, i32** %16, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @memcpy(i32* %192, i32* %26, i32 %193)
  %195 = load i32*, i32** @ctrblk, align 8
  %196 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %197 = call i32 @crypto_inc(i32* %195, i32 %196)
  %198 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %199 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %200 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %198, %struct.blkcipher_walk* %199, i32 0)
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %188, %160
  %202 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %9, align 8
  %203 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** @ctrblk, align 8
  %206 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %207 = call i32 @memcpy(i32* %204, i32* %205, i32 %206)
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %209

209:                                              ; preds = %201, %31
  %210 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @crypt_s390_kmctr(i64, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
