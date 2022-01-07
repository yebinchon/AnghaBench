; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on26.c_on26_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on26.c_on26_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @on26_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on26_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %149 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %66
    i32 3, label %93
    i32 4, label %121
  ]

11:                                               ; preds = %3, %3
  %12 = call i32 @w0(i32 1)
  %13 = load i32, i32* @P1, align 4
  %14 = call i32 @w0(i32 1)
  %15 = load i32, i32* @P2, align 4
  %16 = call i32 @w0(i32 2)
  %17 = load i32, i32* @P1, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 24, %20
  %22 = call i32 @w0(i32 %21)
  %23 = load i32, i32* @P2, align 4
  %24 = call i32 @w0(i32 0)
  %25 = load i32, i32* @P1, align 4
  %26 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %52, %11
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = call i32 @w2(i32 5)
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 @w0(i32 %40)
  %42 = call i32 @w2(i32 7)
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @w0(i32 %50)
  br label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %27

55:                                               ; preds = %27
  %56 = call i32 @w2(i32 5)
  %57 = call i32 @w2(i32 4)
  %58 = call i32 @w0(i32 2)
  %59 = load i32, i32* @P1, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 8, %62
  %64 = call i32 @w0(i32 %63)
  %65 = load i32, i32* @P2, align 4
  br label %149

66:                                               ; preds = %3
  %67 = call i32 @w3(i32 1)
  %68 = call i32 @w3(i32 1)
  %69 = call i32 @w2(i32 5)
  %70 = call i32 @w4(i32 1)
  %71 = call i32 @w2(i32 4)
  %72 = call i32 @w3(i32 0)
  %73 = call i32 @w3(i32 0)
  %74 = call i32 @w2(i32 197)
  %75 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %88, %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 @w4(i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %76

91:                                               ; preds = %76
  %92 = call i32 @w2(i32 196)
  br label %149

93:                                               ; preds = %3
  %94 = call i32 @w3(i32 1)
  %95 = call i32 @w3(i32 1)
  %96 = call i32 @w2(i32 5)
  %97 = call i32 @w4(i32 1)
  %98 = call i32 @w2(i32 4)
  %99 = call i32 @w3(i32 0)
  %100 = call i32 @w3(i32 0)
  %101 = call i32 @w2(i32 197)
  %102 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %116, %93
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sdiv i32 %105, 2
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @w4w(i32 %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %103

119:                                              ; preds = %103
  %120 = call i32 @w2(i32 196)
  br label %149

121:                                              ; preds = %3
  %122 = call i32 @w3(i32 1)
  %123 = call i32 @w3(i32 1)
  %124 = call i32 @w2(i32 5)
  %125 = call i32 @w4(i32 1)
  %126 = call i32 @w2(i32 4)
  %127 = call i32 @w3(i32 0)
  %128 = call i32 @w3(i32 0)
  %129 = call i32 @w2(i32 197)
  %130 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %144, %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %6, align 4
  %134 = sdiv i32 %133, 4
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i8*, i8** %5, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @w4l(i32 %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %131

147:                                              ; preds = %131
  %148 = call i32 @w2(i32 196)
  br label %149

149:                                              ; preds = %3, %147, %119, %91, %55
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i32) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
