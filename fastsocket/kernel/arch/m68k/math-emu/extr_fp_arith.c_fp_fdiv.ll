; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64*, i64 }
%union.fp_mant128 = type { i32* }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fdiv\0A\00", align 1
@FPSR_EXC_DZ = common dso_local global i32 0, align 4
@FPSR_EXC_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fdiv(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca %union.fp_mant128, align 8
  %7 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %8 = load i32, i32* @PINSTR, align 4
  %9 = call i32 @dprint(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %11 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %12 = call i32 @fp_dyadic_check(%struct.fp_ext* %10, %struct.fp_ext* %11)
  %13 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %14 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %17 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %15, %18
  %20 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %21 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %23 = call i64 @IS_INF(%struct.fp_ext* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %27 = call i64 @IS_INF(%struct.fp_ext* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %31 = call i32 @fp_set_nan(%struct.fp_ext* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %33, %struct.fp_ext** %3, align 8
  br label %150

34:                                               ; preds = %2
  %35 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %36 = call i64 @IS_INF(%struct.fp_ext* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %40 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %42 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %45 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %46, %struct.fp_ext** %3, align 8
  br label %150

47:                                               ; preds = %34
  %48 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %49 = call i64 @IS_ZERO(%struct.fp_ext* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %53 = call i64 @IS_ZERO(%struct.fp_ext* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %57 = call i32 @fp_set_nan(%struct.fp_ext* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %59, %struct.fp_ext** %3, align 8
  br label %150

60:                                               ; preds = %47
  %61 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %62 = call i64 @IS_ZERO(%struct.fp_ext* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* @FPSR_EXC_DZ, align 4
  %66 = call i32 @fp_set_sr(i32 %65)
  %67 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %68 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %67, i32 0, i32 1
  store i32 32767, i32* %68, align 4
  %69 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %70 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %72, %struct.fp_ext** %3, align 8
  br label %150

73:                                               ; preds = %60
  %74 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %75 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %78 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  %81 = add nsw i32 %80, 16383
  store i32 %81, i32* %7, align 4
  %82 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %83 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %73
  %90 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %91 = call i64 @fp_overnormalize(%struct.fp_ext* %90)
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %89, %73
  %97 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %98 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %106 = call i64 @fp_overnormalize(%struct.fp_ext* %105)
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %104, %96
  %112 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %113 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %114 = call i32 @fp_dividemant(%union.fp_mant128* %6, %struct.fp_ext* %112, %struct.fp_ext* %113)
  %115 = bitcast %union.fp_mant128* %6 to i32**
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %7, align 4
  %123 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %124 = call i32 @fp_putmant128(%struct.fp_ext* %123, %union.fp_mant128* %6, i32 32)
  br label %128

125:                                              ; preds = %111
  %126 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %127 = call i32 @fp_putmant128(%struct.fp_ext* %126, %union.fp_mant128* %6, i32 31)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %7, align 4
  %130 = icmp sge i32 %129, 32767
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %133 = call i32 @fp_set_ovrflw(%struct.fp_ext* %132)
  %134 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %134, %struct.fp_ext** %3, align 8
  br label %150

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %138 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32, i32* @FPSR_EXC_UNFL, align 4
  %143 = call i32 @fp_set_sr(i32 %142)
  %144 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @fp_denormalize(%struct.fp_ext* %144, i32 %146)
  br label %148

148:                                              ; preds = %141, %135
  %149 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %149, %struct.fp_ext** %3, align 8
  br label %150

150:                                              ; preds = %148, %131, %64, %58, %38, %32
  %151 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %151
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_sr(i32) #1

declare dso_local i64 @fp_overnormalize(%struct.fp_ext*) #1

declare dso_local i32 @fp_dividemant(%union.fp_mant128*, %struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_putmant128(%struct.fp_ext*, %union.fp_mant128*, i32) #1

declare dso_local i32 @fp_set_ovrflw(%struct.fp_ext*) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
