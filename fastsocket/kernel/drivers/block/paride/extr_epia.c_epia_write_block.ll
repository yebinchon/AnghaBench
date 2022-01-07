; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @epia_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epia_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %135 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %50
    i32 4, label %77
    i32 5, label %106
  ]

14:                                               ; preds = %3, %3, %3
  %15 = call i32 @w0(i32 161)
  %16 = call i32 @w2(i32 1)
  %17 = call i32 @w2(i32 3)
  %18 = call i32 @w2(i32 1)
  %19 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  store i32 32768, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %44, %14
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @w0(i32 %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 4, %39
  %41 = call i32 @w2(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 1, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %20

47:                                               ; preds = %20
  %48 = call i32 @w2(i32 7)
  %49 = call i32 @w2(i32 4)
  br label %135

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 512
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @WR(i32 132, i32 1)
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 @w3(i32 64)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %68, %55
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @w4(i8 signext %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 512
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @WR(i32 132, i32 0)
  br label %76

76:                                               ; preds = %74, %71
  br label %135

77:                                               ; preds = %3
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 512
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @WR(i32 132, i32 1)
  br label %82

82:                                               ; preds = %80, %77
  %83 = call i32 @w3(i32 64)
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %97, %82
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %86, 2
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @w4w(i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 512
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @WR(i32 132, i32 0)
  br label %105

105:                                              ; preds = %103, %100
  br label %135

106:                                              ; preds = %3
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 512
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @WR(i32 132, i32 1)
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i32 @w3(i32 64)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %126, %111
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sdiv i32 %115, 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @w4l(i32 %124)
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 512
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @WR(i32 132, i32 0)
  br label %134

134:                                              ; preds = %132, %129
  br label %135

135:                                              ; preds = %3, %134, %105, %76, %47
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
