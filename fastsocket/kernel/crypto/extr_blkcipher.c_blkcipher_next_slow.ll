; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_next_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_next_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32, i32)* @blkcipher_next_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_next_slow(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.blkcipher_walk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, 1
  %16 = call i32 @ALIGN(i64 %13, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %24 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %26, i32 0, i32 5
  store i64 %25, i64* %27, align 8
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %61

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %34, 3
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  %38 = sub i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (...) @crypto_tfm_ctx_alignment()
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = add i32 %38, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i64 @kmalloc(i32 %45, i32 %46)
  %48 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %51 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %33
  %55 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %56 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %55, %struct.blkcipher_walk* %56, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %117

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %32, %21
  %62 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %63 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  %67 = call i32 @ALIGN(i64 %64, i32 %66)
  %68 = zext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %71 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32* %69, i32** %73, align 8
  %74 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %75 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i8* @blkcipher_get_spot(i32* %78, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %83 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32* %81, i32** %85, align 8
  %86 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %87 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %8, align 4
  %95 = call i8* @blkcipher_get_spot(i32* %93, i32 %94)
  %96 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %97 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %101 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %106 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %105, i32 0, i32 2
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @scatterwalk_copychunks(i8* %104, i32* %106, i32 %107, i32 0)
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %111 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @BLKCIPHER_WALK_SLOW, align 4
  %113 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %114 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %61, %54
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i8* @blkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
