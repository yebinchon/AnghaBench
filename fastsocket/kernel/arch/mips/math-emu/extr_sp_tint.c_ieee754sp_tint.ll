; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_tint.c_ieee754sp_tint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_tint.c_ieee754sp_tint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sp_tint\00", align 1
@xe = common dso_local global i32 0, align 4
@xs = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@SP_HIDDEN_BIT = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_tint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @COMPXSP, align 4
  %9 = load i32, i32* @CLEARCX, align 4
  %10 = load i32, i32* @EXPLODEXSP, align 4
  %11 = load i32, i32* @FLUSHXSP, align 4
  %12 = load i32, i32* @xc, align 4
  switch i32 %12, label %21 [
    i32 133, label %13
    i32 134, label %13
    i32 136, label %13
    i32 132, label %19
    i32 137, label %20
    i32 135, label %20
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %15 = call i32 @SETCX(i32 %14)
  %16 = call i32 (...) @ieee754si_indef()
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ieee754si_xcpt(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  br label %155

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

20:                                               ; preds = %1, %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @xe, align 4
  %23 = icmp sge i32 %22, 31
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* @xe, align 4
  %26 = icmp eq i32 %25, 31
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @xs, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @xm, align 4
  %32 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -2147483648, i32* %2, align 4
  br label %155

35:                                               ; preds = %30, %27, %24
  %36 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %37 = call i32 @SETCX(i32 %36)
  %38 = call i32 (...) @ieee754si_indef()
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ieee754si_xcpt(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %2, align 4
  br label %155

41:                                               ; preds = %21
  %42 = load i32, i32* @xe, align 4
  %43 = load i32, i32* @SP_MBITS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @xe, align 4
  %47 = load i32, i32* @SP_MBITS, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* @xm, align 4
  %50 = shl i32 %49, %48
  store i32 %50, i32* @xm, align 4
  br label %147

51:                                               ; preds = %41
  %52 = load i32, i32* @xe, align 4
  %53 = icmp slt i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @xm, align 4
  store i32 %55, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  store i32 0, i32* @xm, align 4
  br label %81

59:                                               ; preds = %51
  %60 = load i32, i32* @xm, align 4
  %61 = load i32, i32* @xe, align 4
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %60, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @SP_MBITS, align 4
  %65 = sub nsw i32 31, %64
  %66 = load i32, i32* %4, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 31
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 1
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @SP_MBITS, align 4
  %77 = load i32, i32* @xe, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* @xm, align 4
  %80 = ashr i32 %79, %78
  store i32 %80, i32* @xm, align 4
  br label %81

81:                                               ; preds = %59, %54
  %82 = load i32, i32* @xm, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %86, label %127 [
    i32 130, label %87
    i32 128, label %100
    i32 129, label %101
    i32 131, label %114
  ]

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @xm, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @xm, align 4
  br label %99

99:                                               ; preds = %96, %93, %87
  br label %127

100:                                              ; preds = %81
  br label %127

101:                                              ; preds = %81
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104, %101
  %108 = load i64, i64* @xs, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @xm, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @xm, align 4
  br label %113

113:                                              ; preds = %110, %107, %104
  br label %127

114:                                              ; preds = %81
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117, %114
  %121 = load i64, i64* @xs, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @xm, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @xm, align 4
  br label %126

126:                                              ; preds = %123, %120, %117
  br label %127

127:                                              ; preds = %81, %126, %113, %100, %99
  %128 = load i32, i32* @xm, align 4
  %129 = ashr i32 %128, 31
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %133 = call i32 @SETCX(i32 %132)
  %134 = call i32 (...) @ieee754si_indef()
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @ieee754si_xcpt(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %135)
  store i32 %136, i32* %2, align 4
  br label %155

137:                                              ; preds = %127
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140, %137
  %144 = load i32, i32* @IEEE754_INEXACT, align 4
  %145 = call i32 @SETCX(i32 %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %45
  %148 = load i64, i64* @xs, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @xm, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @xm, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %150, %131, %35, %34, %19, %13
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754si_xcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754si_indef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
