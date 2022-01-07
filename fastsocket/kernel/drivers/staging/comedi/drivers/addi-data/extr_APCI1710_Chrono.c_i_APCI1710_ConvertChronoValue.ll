; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Chrono.c_i_APCI1710_ConvertChronoValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Chrono.c_i_APCI1710_ConvertChronoValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Chronometer not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"The module is not a Chronometer module\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ConvertChronoValue(%struct.comedi_device* %0, i8 zeroext %1, i32 %2, i32* %3, i8* %4, i8* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.comedi_device*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %10, align 8
  store i8 %1, i8* %11, align 1
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %156

29:                                               ; preds = %9
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 4294901760
  %40 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %153

43:                                               ; preds = %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %150

54:                                               ; preds = %43
  %55 = call i32 (...) @fpu_begin()
  %56 = load i32, i32* %12, align 4
  %57 = uitofp i32 %56 to double
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = fmul double %57, %67
  store double %68, double* %20, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %148 [
    i32 0, label %78
    i32 1, label %81
    i32 2, label %84
    i32 3, label %87
    i32 4, label %90
  ]

78:                                               ; preds = %54
  %79 = load double, double* %20, align 8
  %80 = fdiv double %79, 1.000000e+03
  store double %80, double* %20, align 8
  br label %81

81:                                               ; preds = %54, %78
  %82 = load double, double* %20, align 8
  %83 = fdiv double %82, 1.000000e+03
  store double %83, double* %20, align 8
  br label %84

84:                                               ; preds = %54, %81
  %85 = load double, double* %20, align 8
  %86 = fdiv double %85, 1.000000e+03
  store double %86, double* %20, align 8
  br label %87

87:                                               ; preds = %54, %84
  %88 = load double, double* %20, align 8
  %89 = fdiv double %88, 6.000000e+01
  store double %89, double* %20, align 8
  br label %90

90:                                               ; preds = %54, %87
  %91 = load double, double* %20, align 8
  %92 = fdiv double %91, 6.000000e+01
  store double %92, double* %20, align 8
  %93 = load double, double* %20, align 8
  %94 = fptoui double %93 to i32
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  %96 = load double, double* %20, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %97, align 4
  %99 = uitofp i32 %98 to double
  %100 = fsub double %96, %99
  store double %100, double* %21, align 8
  %101 = load double, double* %21, align 8
  %102 = fmul double %101, 6.000000e+01
  store double %102, double* %21, align 8
  %103 = load double, double* %21, align 8
  %104 = fptoui double %103 to i8
  %105 = load i8*, i8** %14, align 8
  store i8 %104, i8* %105, align 1
  %106 = load double, double* %21, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sitofp i32 %109 to double
  %111 = fsub double %106, %110
  store double %111, double* %22, align 8
  %112 = load double, double* %22, align 8
  %113 = fmul double %112, 6.000000e+01
  store double %113, double* %22, align 8
  %114 = load double, double* %22, align 8
  %115 = fptoui double %114 to i8
  %116 = load i8*, i8** %15, align 8
  store i8 %115, i8* %116, align 1
  %117 = load double, double* %22, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sitofp i32 %120 to double
  %122 = fsub double %117, %121
  store double %122, double* %23, align 8
  %123 = load double, double* %23, align 8
  %124 = fmul double %123, 1.000000e+03
  store double %124, double* %23, align 8
  %125 = load double, double* %23, align 8
  %126 = fptoui double %125 to i32
  %127 = load i32*, i32** %16, align 8
  store i32 %126, i32* %127, align 4
  %128 = load double, double* %23, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %129, align 4
  %131 = uitofp i32 %130 to double
  %132 = fsub double %128, %131
  store double %132, double* %24, align 8
  %133 = load double, double* %24, align 8
  %134 = fmul double %133, 1.000000e+03
  store double %134, double* %24, align 8
  %135 = load double, double* %24, align 8
  %136 = fptoui double %135 to i32
  %137 = load i32*, i32** %17, align 8
  store i32 %136, i32* %137, align 4
  %138 = load double, double* %24, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %139, align 4
  %141 = uitofp i32 %140 to double
  %142 = fsub double %138, %141
  store double %142, double* %25, align 8
  %143 = load double, double* %25, align 8
  %144 = fmul double %143, 1.000000e+03
  store double %144, double* %25, align 8
  %145 = load double, double* %25, align 8
  %146 = fptoui double %145 to i32
  %147 = load i32*, i32** %18, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %54, %90
  %149 = call i32 (...) @fpu_end()
  br label %152

150:                                              ; preds = %43
  %151 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %19, align 4
  br label %152

152:                                              ; preds = %150, %148
  br label %155

153:                                              ; preds = %29
  %154 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %19, align 4
  br label %155

155:                                              ; preds = %153, %152
  br label %158

156:                                              ; preds = %9
  %157 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %19, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i32, i32* %19, align 4
  ret i32 %159
}

declare dso_local i32 @fpu_begin(...) #1

declare dso_local i32 @fpu_end(...) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
