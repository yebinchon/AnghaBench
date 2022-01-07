; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_next_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_next_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_14__ = type { i32 }

@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*)* @blkcipher_next_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_next_fast(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca i64, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  %7 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %8 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %7, i32 0, i32 4
  %9 = call i8* @scatterwalk_page(%struct.TYPE_14__* %8)
  %10 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %11 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @offset_in_page(i32 %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 3
  %26 = call i8* @scatterwalk_page(%struct.TYPE_14__* %25)
  %27 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %28 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %32 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @offset_in_page(i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

48:                                               ; preds = %2
  %49 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %50 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %55 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %53, %58
  store i64 %59, i64* %6, align 8
  %60 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %61 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %66 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %64, %69
  %71 = load i64, i64* %6, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %74 = call i32 @blkcipher_map_src(%struct.blkcipher_walk* %73)
  %75 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %76 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %81 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %48
  %87 = load i32, i32* @BLKCIPHER_WALK_DIFF, align 4
  %88 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %89 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %93 = call i32 @blkcipher_map_dst(%struct.blkcipher_walk* %92)
  br label %94

94:                                               ; preds = %86, %48
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %47
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @scatterwalk_page(%struct.TYPE_14__*) #1

declare dso_local i8* @offset_in_page(i32) #1

declare dso_local i32 @blkcipher_map_src(%struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_map_dst(%struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
