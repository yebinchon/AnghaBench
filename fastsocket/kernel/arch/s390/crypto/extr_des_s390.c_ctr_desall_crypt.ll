; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_ctr_desall_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_ctr_desall_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.crypt_s390_des_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.crypt_s390_des_ctx*, %struct.blkcipher_walk*)* @ctr_desall_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_desall_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.crypt_s390_des_ctx* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.crypt_s390_des_ctx*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.crypt_s390_des_ctx* %2, %struct.crypt_s390_des_ctx** %7, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %8, align 8
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %18 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %19 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %20 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %17, %struct.blkcipher_walk* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32*, i32** @ctrblk, align 8
  %26 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %30 = call i32 @memcpy(i32* %25, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %146, %4
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %151

37:                                               ; preds = %31
  %38 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %39 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %15, align 8
  %43 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %44 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %16, align 8
  br label %48

48:                                               ; preds = %131, %37
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %146

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @PAGE_SIZE, align 4
  br label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %61, -1
  %63 = and i32 %59, %62
  br label %64

64:                                               ; preds = %58, %56
  %65 = phi i32 [ %57, %56 ], [ %63, %58 ]
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @DES_BLOCK_SIZE, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %92, %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32*, i32** @ctrblk, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32*, i32** @ctrblk, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %85 = call i32 @memcpy(i32* %75, i32* %83, i32 %84)
  %86 = load i32*, i32** @ctrblk, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %91 = call i32 @crypto_inc(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %67

96:                                               ; preds = %67
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.crypt_s390_des_ctx*, %struct.crypt_s390_des_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.crypt_s390_des_ctx, %struct.crypt_s390_des_ctx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** @ctrblk, align 8
  %105 = call i32 @crypt_s390_kmctr(i64 %97, i32 %100, i32* %101, i32* %102, i32 %103, i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %109, %110
  br label %112

112:                                              ; preds = %108, %96
  %113 = phi i1 [ true, %96 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %118 = icmp ugt i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32*, i32** @ctrblk, align 8
  %121 = load i32*, i32** @ctrblk, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %130 = call i32 @memcpy(i32* %120, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %119, %112
  %132 = load i32*, i32** @ctrblk, align 8
  %133 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %134 = call i32 @crypto_inc(i32* %132, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %15, align 8
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %15, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32*, i32** %16, align 8
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %16, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %48

146:                                              ; preds = %48
  %147 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %148 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %147, %struct.blkcipher_walk* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  br label %31

151:                                              ; preds = %31
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %151
  %155 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %156 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %15, align 8
  %160 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %161 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  store i32* %164, i32** %16, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.crypt_s390_des_ctx*, %struct.crypt_s390_des_ctx** %7, align 8
  %167 = getelementptr inbounds %struct.crypt_s390_des_ctx, %struct.crypt_s390_des_ctx* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %16, align 8
  %170 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %171 = load i32*, i32** @ctrblk, align 8
  %172 = call i32 @crypt_s390_kmctr(i64 %165, i32 %168, i32* %24, i32* %169, i32 %170, i32* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %154
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %178 = icmp ne i32 %176, %177
  br label %179

179:                                              ; preds = %175, %154
  %180 = phi i1 [ true, %154 ], [ %178, %175 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @BUG_ON(i32 %181)
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @memcpy(i32* %183, i32* %24, i32 %184)
  %186 = load i32*, i32** @ctrblk, align 8
  %187 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %188 = call i32 @crypto_inc(i32* %186, i32 %187)
  %189 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %190 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %191 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %189, %struct.blkcipher_walk* %190, i32 0)
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %179, %151
  %193 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %194 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32*, i32** @ctrblk, align 8
  %197 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %198 = call i32 @memcpy(i32* %195, i32* %196, i32 %197)
  %199 = load i32, i32* %9, align 4
  %200 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 %199
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
