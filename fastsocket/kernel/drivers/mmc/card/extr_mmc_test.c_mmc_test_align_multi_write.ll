; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_align_multi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_align_multi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_align_multi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_align_multi_write(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %8 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %17, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @min(i32 %21, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %30, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 512
  %48 = call i32 @min(i32 %39, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %49, 1024
  br i1 %50, label %51, label %53

51:                                               ; preds = %18
  %52 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @sg_init_one(%struct.scatterlist* %7, i64 %63, i32 %64)
  %66 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = udiv i32 %67, 512
  %69 = call i32 @mmc_test_transfer(%struct.mmc_test_card* %66, %struct.scatterlist* %7, i32 1, i32 0, i32 %68, i32 512, i32 1)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %54

78:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %72, %51, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i32) #1

declare dso_local i32 @mmc_test_transfer(%struct.mmc_test_card*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
