; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wv_frequency_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wv_frequency_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@channel_bands = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @wv_frequency_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wv_frequency_list(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 10, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %15 = call i32 @fee_read(i32 %13, i32 113, i32* %14, i32 10)
  store i32 0, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %81, %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 150
  br i1 %18, label %19, label %84

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = sdiv i64 %20, 16
  %22 = sub nsw i64 9, %21
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %9, align 8
  %26 = srem i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32*, i32** @channel_bands, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 1
  %39 = sub nsw i32 %38, 24
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 10
  br label %46

46:                                               ; preds = %43, %32
  %47 = phi i1 [ false, %32 ], [ %45, %43 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %32

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 24
  %60 = mul nsw i64 %59, 5
  %61 = add nsw i64 %60, 24000
  %62 = mul nsw i64 %61, 10000
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 %62, i64* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %51
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %19
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %16

84:                                               ; preds = %16
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @fee_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
