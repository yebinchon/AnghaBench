; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_tlong.c_ieee754sp_tlong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_tlong.c_ieee754sp_tlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sp_tlong\00", align 1
@xe = common dso_local global i32 0, align 4
@xs = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@SP_HIDDEN_BIT = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_tlong(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @COMPXDP, align 4
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
  %16 = call i32 (...) @ieee754di_indef()
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ieee754di_xcpt(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  br label %158

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %158

20:                                               ; preds = %1, %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @xe, align 4
  %23 = icmp sge i32 %22, 63
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* @xe, align 4
  %26 = icmp eq i32 %25, 63
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
  store i32 0, i32* %2, align 4
  br label %158

35:                                               ; preds = %30, %27, %24
  %36 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %37 = call i32 @SETCX(i32 %36)
  %38 = call i32 (...) @ieee754di_indef()
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ieee754di_xcpt(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %2, align 4
  br label %158

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
  br label %150

51:                                               ; preds = %41
  %52 = load i32, i32* @xe, align 4
  %53 = load i32, i32* @SP_MBITS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %149

55:                                               ; preds = %51
  %56 = load i32, i32* @xe, align 4
  %57 = icmp slt i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @xm, align 4
  store i32 %59, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  store i32 0, i32* @xm, align 4
  br label %83

63:                                               ; preds = %55
  %64 = load i32, i32* @xm, align 4
  %65 = load i32, i32* @SP_MBITS, align 4
  %66 = sub nsw i32 32, %65
  %67 = load i32, i32* @xe, align 4
  %68 = add nsw i32 %66, %67
  %69 = shl i32 %64, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 31
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = shl i32 %74, 1
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @SP_MBITS, align 4
  %79 = load i32, i32* @xe, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* @xm, align 4
  %82 = ashr i32 %81, %80
  store i32 %82, i32* @xm, align 4
  br label %83

83:                                               ; preds = %63, %58
  %84 = load i32, i32* @xm, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %88, label %129 [
    i32 130, label %89
    i32 128, label %102
    i32 129, label %103
    i32 131, label %116
  ]

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @xm, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @xm, align 4
  br label %101

101:                                              ; preds = %98, %95, %89
  br label %129

102:                                              ; preds = %83
  br label %129

103:                                              ; preds = %83
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106, %103
  %110 = load i64, i64* @xs, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @xm, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @xm, align 4
  br label %115

115:                                              ; preds = %112, %109, %106
  br label %129

116:                                              ; preds = %83
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %116
  %123 = load i64, i64* @xs, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @xm, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @xm, align 4
  br label %128

128:                                              ; preds = %125, %122, %119
  br label %129

129:                                              ; preds = %83, %128, %115, %102, %101
  %130 = load i32, i32* @xm, align 4
  %131 = ashr i32 %130, 63
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %135 = call i32 @SETCX(i32 %134)
  %136 = call i32 (...) @ieee754di_indef()
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @ieee754di_xcpt(i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %2, align 4
  br label %158

139:                                              ; preds = %129
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142, %139
  %146 = load i32, i32* @IEEE754_INEXACT, align 4
  %147 = call i32 @SETCX(i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %51
  br label %150

150:                                              ; preds = %149, %45
  %151 = load i64, i64* @xs, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @xm, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @xm, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %153, %133, %35, %34, %19, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754di_xcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754di_indef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
