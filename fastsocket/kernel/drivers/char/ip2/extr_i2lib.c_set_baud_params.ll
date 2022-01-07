; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_set_baud_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_set_baud_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_7__ = type { i32, i32 }

@ABS_MAX_BOXES = common dso_local global i32 0, align 4
@ABS_BIGGEST_BOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @set_baud_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_baud_params(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %115, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ABS_MAX_BOXES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %118

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %114

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @BID_HAS_654(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, 16
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp eq %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %73

51:                                               ; preds = %40
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 %53, 16
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 921600, i32* %60, align 4
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %62 = load i32, i32* %3, align 4
  %63 = mul nsw i32 %62, 16
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 96, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %36

73:                                               ; preds = %50, %36
  br label %113

74:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %109, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %81 = load i32, i32* %3, align 4
  %82 = mul nsw i32 %81, 16
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp eq %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %112

90:                                               ; preds = %79
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %92 = load i32, i32* %3, align 4
  %93 = mul nsw i32 %92, 16
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 115200, i32* %99, align 4
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %101 = load i32, i32* %3, align 4
  %102 = mul nsw i32 %101, 16
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 12, i32* %108, align 4
  br label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %75

112:                                              ; preds = %89, %75
  br label %113

113:                                              ; preds = %112, %73
  br label %114

114:                                              ; preds = %113, %14
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %10

118:                                              ; preds = %10
  ret void
}

declare dso_local i64 @BID_HAS_654(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
