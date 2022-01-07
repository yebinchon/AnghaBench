; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11_cpdo.c_EmulateCPDO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11_cpdo.c_EmulateCPDO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.roundingData = type { i64, i32, i32 }

@typeNone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmulateCPDO(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.roundingData, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call %struct.TYPE_8__* (...) @GET_FPA11()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @getDestinationSize(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @typeNone, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @SetRoundingMode(i32 %19)
  %21 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SetRoundingPrecision(i32 %22)
  %24 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %9, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @MONADIC_INSTRUCTION(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @getFn(i32 %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CONSTANT_FM(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @getFm(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %46, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %43
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @getFd(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %5, align 8
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %80 [
    i32 128, label %72
    i32 130, label %76
  ]

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = call i32 @SingleCPDO(%struct.roundingData* %9, i32 %73, %struct.TYPE_7__* %74)
  store i32 %75, i32* %8, align 4
  br label %81

76:                                               ; preds = %64
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = call i32 @DoubleCPDO(%struct.roundingData* %9, i32 %77, %struct.TYPE_7__* %78)
  store i32 %79, i32* %8, align 4
  br label %81

80:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %76, %72
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @getFd(i32 %89)
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %84
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @float64_to_float32(%struct.roundingData* %9, i8* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %112

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @float32_to_float64(i8* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %98
  br label %113

113:                                              ; preds = %112, %84
  br label %114

114:                                              ; preds = %113, %81
  %115 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %9, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %9, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @float_raise(i64 %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_8__* @GET_FPA11(...) #1

declare dso_local i32 @getDestinationSize(i32) #1

declare dso_local i32 @SetRoundingMode(i32) #1

declare dso_local i32 @SetRoundingPrecision(i32) #1

declare dso_local i64 @MONADIC_INSTRUCTION(i32) #1

declare dso_local i64 @getFn(i32) #1

declare dso_local i32 @CONSTANT_FM(i32) #1

declare dso_local i32 @getFm(i32) #1

declare dso_local i64 @getFd(i32) #1

declare dso_local i32 @SingleCPDO(%struct.roundingData*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @DoubleCPDO(%struct.roundingData*, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @float64_to_float32(%struct.roundingData*, i8*) #1

declare dso_local i8* @float32_to_float64(i8*) #1

declare dso_local i32 @float_raise(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
