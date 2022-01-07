; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fmul.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64*, i64 }
%union.fp_mant128 = type { i64* }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fmul\0A\00", align 1
@FPSR_EXC_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fmul(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
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
  %27 = call i64 @IS_ZERO(%struct.fp_ext* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %31 = call i32 @fp_set_nan(%struct.fp_ext* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %33, %struct.fp_ext** %3, align 8
  br label %145

34:                                               ; preds = %2
  %35 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %36 = call i64 @IS_INF(%struct.fp_ext* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %40 = call i64 @IS_ZERO(%struct.fp_ext* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %44 = call i32 @fp_set_nan(%struct.fp_ext* %43)
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %47 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %48 = call i32 @fp_copy_ext(%struct.fp_ext* %46, %struct.fp_ext* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %50, %struct.fp_ext** %3, align 8
  br label %145

51:                                               ; preds = %34
  %52 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %53 = call i64 @IS_ZERO(%struct.fp_ext* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %57 = call i64 @IS_ZERO(%struct.fp_ext* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55, %51
  %60 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %61 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %63 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %66 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %67, %struct.fp_ext** %3, align 8
  br label %145

68:                                               ; preds = %55
  %69 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %70 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %73 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = sub nsw i32 %75, 16382
  store i32 %76, i32* %7, align 4
  %77 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %78 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %86 = call i64 @fp_overnormalize(%struct.fp_ext* %85)
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %84, %68
  %92 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %93 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %101 = call i64 @fp_overnormalize(%struct.fp_ext* %100)
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %99, %91
  %107 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %108 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %109 = call i32 @fp_multiplymant(%union.fp_mant128* %6, %struct.fp_ext* %107, %struct.fp_ext* %108)
  %110 = bitcast %union.fp_mant128* %6 to i64**
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  %118 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %119 = call i32 @fp_putmant128(%struct.fp_ext* %118, %union.fp_mant128* %6, i32 1)
  br label %123

120:                                              ; preds = %106
  %121 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %122 = call i32 @fp_putmant128(%struct.fp_ext* %121, %union.fp_mant128* %6, i32 0)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %124, 32767
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %128 = call i32 @fp_set_ovrflw(%struct.fp_ext* %127)
  %129 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %129, %struct.fp_ext** %3, align 8
  br label %145

130:                                              ; preds = %123
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %133 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* @FPSR_EXC_UNFL, align 4
  %138 = call i32 @fp_set_sr(i32 %137)
  %139 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @fp_denormalize(%struct.fp_ext* %139, i32 %141)
  br label %143

143:                                              ; preds = %136, %130
  %144 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %144, %struct.fp_ext** %3, align 8
  br label %145

145:                                              ; preds = %143, %126, %59, %49, %32
  %146 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %146
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i32 @fp_copy_ext(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @fp_overnormalize(%struct.fp_ext*) #1

declare dso_local i32 @fp_multiplymant(%union.fp_mant128*, %struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_putmant128(%struct.fp_ext*, %union.fp_mant128*, i32) #1

declare dso_local i32 @fp_set_ovrflw(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_sr(i32) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
