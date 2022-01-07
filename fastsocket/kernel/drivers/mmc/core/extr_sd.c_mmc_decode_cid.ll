; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_decode_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_decode_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8**, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_decode_cid(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 0
  %9 = call i32 @memset(%struct.TYPE_2__* %8, i32 0, i32 4)
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @UNSTUFF_BITS(i32* %10, i32 120, i32 8)
  %12 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  store i8* %11, i8** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @UNSTUFF_BITS(i32* %15, i32 104, i32 16)
  %17 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i8* %16, i8** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @UNSTUFF_BITS(i32* %20, i32 96, i32 8)
  %22 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %21, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @UNSTUFF_BITS(i32* %27, i32 88, i32 8)
  %29 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %28, i8** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i8* @UNSTUFF_BITS(i32* %34, i32 80, i32 8)
  %36 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %35, i8** %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @UNSTUFF_BITS(i32* %41, i32 72, i32 8)
  %43 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %44 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  store i8* %42, i8** %47, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i8* @UNSTUFF_BITS(i32* %48, i32 64, i32 8)
  %50 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %51 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  store i8* %49, i8** %54, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @UNSTUFF_BITS(i32* %55, i32 60, i32 4)
  %57 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %58 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i8* %56, i8** %59, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i8* @UNSTUFF_BITS(i32* %60, i32 56, i32 4)
  %62 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %63 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i8* @UNSTUFF_BITS(i32* %65, i32 24, i32 32)
  %67 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %68 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i8* @UNSTUFF_BITS(i32* %70, i32 12, i32 8)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i8* @UNSTUFF_BITS(i32* %76, i32 8, i32 4)
  %78 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %79 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 2000
  store i32 %85, i32* %83, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @UNSTUFF_BITS(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
