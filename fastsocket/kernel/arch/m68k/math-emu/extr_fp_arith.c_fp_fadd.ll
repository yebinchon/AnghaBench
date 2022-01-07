; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.fp_ext = type { i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fadd\0A\00", align 1
@FPDATA = common dso_local global %struct.TYPE_4__* null, align 8
@FPCR_ROUND_RM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fadd(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %7 = load i32, i32* @PINSTR, align 4
  %8 = call i32 @dprint(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %10 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %11 = call i32 @fp_dyadic_check(%struct.fp_ext* %9, %struct.fp_ext* %10)
  %12 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %13 = call i64 @IS_INF(%struct.fp_ext* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %17 = call i64 @IS_INF(%struct.fp_ext* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %21 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %24 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %29 = call i32 @fp_set_nan(%struct.fp_ext* %28)
  br label %30

30:                                               ; preds = %27, %19, %15
  %31 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %31, %struct.fp_ext** %3, align 8
  br label %156

32:                                               ; preds = %2
  %33 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %34 = call i64 @IS_INF(%struct.fp_ext* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %38 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %39 = call i32 @fp_copy_ext(%struct.fp_ext* %37, %struct.fp_ext* %38)
  %40 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %40, %struct.fp_ext** %3, align 8
  br label %156

41:                                               ; preds = %32
  %42 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %43 = call i64 @IS_ZERO(%struct.fp_ext* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %47 = call i64 @IS_ZERO(%struct.fp_ext* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %51 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %54 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FPDATA, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FPCR_ROUND_RM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %65 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %64, i32 0, i32 0
  store i64 1, i64* %65, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %68 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %49
  br label %75

71:                                               ; preds = %45
  %72 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %73 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %74 = call i32 @fp_copy_ext(%struct.fp_ext* %72, %struct.fp_ext* %73)
  br label %75

75:                                               ; preds = %71, %70
  %76 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %76, %struct.fp_ext** %3, align 8
  br label %156

77:                                               ; preds = %41
  %78 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %79 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %81 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %83 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %86 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %6, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @fp_denormalize(%struct.fp_ext* %91, i32 %92)
  br label %103

94:                                               ; preds = %77
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @fp_denormalize(%struct.fp_ext* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %105 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %108 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %113 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %114 = call i64 @fp_addmant(%struct.fp_ext* %112, %struct.fp_ext* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %118 = call i32 @fp_addcarry(%struct.fp_ext* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %121, %struct.fp_ext** %3, align 8
  br label %156

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %111
  br label %154

124:                                              ; preds = %103
  %125 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %126 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %130 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %128, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %124
  %135 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %136 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %137 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %138 = call i32 @fp_submant(%struct.fp_ext* %135, %struct.fp_ext* %136, %struct.fp_ext* %137)
  %139 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %140 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %147 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %153

148:                                              ; preds = %124
  %149 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %150 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %151 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %152 = call i32 @fp_submant(%struct.fp_ext* %149, %struct.fp_ext* %150, %struct.fp_ext* %151)
  br label %153

153:                                              ; preds = %148, %134
  br label %154

154:                                              ; preds = %153, %123
  %155 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %155, %struct.fp_ext** %3, align 8
  br label %156

156:                                              ; preds = %154, %120, %75, %36, %30
  %157 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %157
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i32 @fp_copy_ext(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

declare dso_local i64 @fp_addmant(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_addcarry(%struct.fp_ext*) #1

declare dso_local i32 @fp_submant(%struct.fp_ext*, %struct.fp_ext*, %struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
