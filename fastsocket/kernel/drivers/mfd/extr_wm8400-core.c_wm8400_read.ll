; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8400-core.c_wm8400_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8400-core.c_wm8400_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.wm8400 = type { i32 (i32, i32, i32, i32*)*, i32*, i32 }

@reg_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8400*, i32, i32, i32*)* @wm8400_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_read(%struct.wm8400* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8400*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm8400* %0, %struct.wm8400** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.wm8400*, %struct.wm8400** %6, align 8
  %17 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp sgt i32 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %74, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_data, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %30
  %39 = load %struct.wm8400*, %struct.wm8400** %6, align 8
  %40 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %40, align 8
  %42 = load %struct.wm8400*, %struct.wm8400** %6, align 8
  %43 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 %41(i32 %44, i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %90

53:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %54

72:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %90

73:                                               ; preds = %30
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.wm8400*, %struct.wm8400** %6, align 8
  %80 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memcpy(i32* %78, i32* %84, i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %77, %72, %51
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
