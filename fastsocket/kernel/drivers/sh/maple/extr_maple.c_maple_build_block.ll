; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_build_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_build_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { i64*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@maple_lastptr = common dso_local global i32* null, align 8
@maple_sendptr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapleq*)* @maple_build_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_build_block(%struct.mapleq* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.mapleq* %0, %struct.mapleq** %2, align 8
  %9 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %10 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %8, align 8
  %12 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %13 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %3, align 4
  %18 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %19 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %24 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 6
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 6
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = and i32 %35, 31
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ 32, %37 ]
  %40 = or i32 %29, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** @maple_lastptr, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 2147483647
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** @maple_sendptr, align 8
  store i32* %44, i32** @maple_lastptr, align 8
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %46, %47
  %49 = or i32 %48, -2147483648
  %50 = load i32*, i32** @maple_sendptr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** @maple_sendptr, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %53 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PHYSADDR(i32 %56)
  %58 = load i32*, i32** @maple_sendptr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** @maple_sendptr, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %61 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 24
  %71 = or i32 %68, %70
  %72 = load i32*, i32** @maple_sendptr, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** @maple_sendptr, align 8
  store i32 %71, i32* %72, align 4
  br label %74

74:                                               ; preds = %78, %38
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  %77 = icmp sgt i32 %75, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %8, align 8
  %81 = load i64, i64* %79, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** @maple_sendptr, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** @maple_sendptr, align 8
  store i32 %82, i32* %83, align 4
  br label %74

85:                                               ; preds = %74
  ret void
}

declare dso_local i32 @PHYSADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
