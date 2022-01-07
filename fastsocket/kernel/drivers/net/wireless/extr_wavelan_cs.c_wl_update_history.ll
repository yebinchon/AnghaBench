; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wl_update_history.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wl_update_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i8, i32, i32, i32 }

@WAVEPOINT_HISTORY = common dso_local global i8 0, align 1
@jiffies = common dso_local global i32 0, align 4
@WAVEPOINT_FAST_HISTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i8)* @wl_update_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_update_history(%struct.TYPE_3__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %13, %17
  %19 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %20 = zext i8 %19 to i32
  %21 = srem i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i8, i8* %34, align 8
  %36 = add i8 %35, 1
  store i8 %36, i8* %34, align 8
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = srem i32 %44, %40
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 8
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* @jiffies, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i8, i8* %6, align 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i8 %55, i8* %57, align 8
  %58 = load i8, i8* %5, align 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 8
  %65 = add i8 %64, 1
  store i8 %65, i8* %63, align 8
  %66 = zext i8 %64 to i64
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  store i8 %58, i8* %67, align 1
  %68 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %69 = zext i8 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = srem i32 %73, %69
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 8
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* @WAVEPOINT_FAST_HISTORY, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %81, %83
  %85 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %86 = zext i8 %85 to i32
  %87 = srem i32 %84, %86
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %108, %51
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @WAVEPOINT_FAST_HISTORY, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %9, align 4
  %107 = srem i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @WAVEPOINT_FAST_HISTORY, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %135, %111
  %115 = load i32, i32* %7, align 4
  %116 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %11, align 4
  %131 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32, i32* %9, align 4
  %134 = srem i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %114

138:                                              ; preds = %114
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @WAVEPOINT_FAST_HISTORY, align 4
  %141 = sdiv i32 %139, %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i8, i8* @WAVEPOINT_HISTORY, align 1
  %146 = zext i8 %145 to i32
  %147 = sdiv i32 %144, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
