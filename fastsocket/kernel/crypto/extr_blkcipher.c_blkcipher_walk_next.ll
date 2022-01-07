; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_COPY = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*)* @blkcipher_walk_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_walk_next(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca %struct.crypto_blkcipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 1
  %13 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %12, align 8
  store %struct.crypto_blkcipher* %13, %struct.crypto_blkcipher** %6, align 8
  %14 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %15 = call i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %17 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %21 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %20)
  %22 = icmp ult i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %28 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %29 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %33 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %32, %struct.blkcipher_walk* %33, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %171

37:                                               ; preds = %2
  %38 = load i32, i32* @BLKCIPHER_WALK_SLOW, align 4
  %39 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BLKCIPHER_WALK_DIFF, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %45 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %48, i32 0, i32 6
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @scatterwalk_aligned(i32* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %55 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %54, i32 0, i32 5
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @scatterwalk_aligned(i32* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %53, %37
  %60 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %61 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %62 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %66 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %65, i32 0, i32 8
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i64 @__get_free_page(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %74 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %76 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %75, i32 0, i32 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %84 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @min(i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %89 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %88, i32 0, i32 6
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @scatterwalk_clamp(i32* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %93 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %92, i32 0, i32 5
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @scatterwalk_clamp(i32* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ult i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %82
  %103 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %104 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @blkcipher_next_slow(%struct.blkcipher_desc* %103, %struct.blkcipher_walk* %104, i32 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  br label %125

108:                                              ; preds = %82
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %111 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %113 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %120 = call i32 @blkcipher_next_copy(%struct.blkcipher_walk* %119)
  store i32 %120, i32* %10, align 4
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %123 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %124 = call i32 @blkcipher_next_fast(%struct.blkcipher_desc* %122, %struct.blkcipher_walk* %123)
  store i32 %124, i32* %3, align 4
  br label %171

125:                                              ; preds = %118, %102
  %126 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %127 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %125
  %133 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %134 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @virt_to_page(i32 %137)
  %139 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %140 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %144 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @virt_to_page(i32 %147)
  %149 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %150 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %156 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %154
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %164 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %162
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %132, %125
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %121, %26
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @scatterwalk_aligned(i32*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scatterwalk_clamp(i32*, i32) #1

declare dso_local i32 @blkcipher_next_slow(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32, i32) #1

declare dso_local i32 @blkcipher_next_copy(%struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_next_fast(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i8* @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
