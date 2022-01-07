; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_get_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_get_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }

@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@CLOCK_MASK = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i32)* @a2150_get_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_get_timing(%struct.comedi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 3, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 1, %23
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 1, %37
  %39 = mul nsw i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %3
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %47
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %107, %55
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %110

59:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %103, %59
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = shl i32 1, %74
  %76 = mul nsw i32 %73, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp uge i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %80, %66
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ule i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %93, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %60

106:                                              ; preds = %60
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %56

110:                                              ; preds = %56
  %111 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  switch i32 %114, label %116 [
    i32 129, label %115
    i32 128, label %133
    i32 130, label %136
  ]

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %110, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %117, %119
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sub i32 %122, %123
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  br label %132

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %5, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  br label %139

133:                                              ; preds = %110
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %110
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133, %132
  %140 = load i32, i32* @CLOCK_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %139
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @CLOCK_SELECT_BITS(i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @CLOCK_DIVISOR_BITS(i32 %153)
  %155 = or i32 %152, %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %170

160:                                              ; preds = %139
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @CLOCK_SELECT_BITS(i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @CLOCK_DIVISOR_BITS(i32 %163)
  %165 = or i32 %162, %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %160, %150
  ret i32 0
}

declare dso_local i32 @CLOCK_SELECT_BITS(i32) #1

declare dso_local i32 @CLOCK_DIVISOR_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
