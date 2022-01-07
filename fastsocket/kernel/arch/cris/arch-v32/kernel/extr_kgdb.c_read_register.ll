; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_read_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@R0 = common dso_local global i8 0, align 1
@ACR = common dso_local global i8 0, align 1
@reg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BZ = common dso_local global i8 0, align 1
@VR = common dso_local global i8 0, align 1
@PID = common dso_local global i8 0, align 1
@SRS = common dso_local global i8 0, align 1
@WZ = common dso_local global i8 0, align 1
@EXS = common dso_local global i8 0, align 1
@PC = common dso_local global i8 0, align 1
@S0 = common dso_local global i8 0, align 1
@S15 = common dso_local global i8 0, align 1
@sreg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@E05 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32*)* @read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_register(i8 signext %0, i32* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @R0, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @ACR, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @R0, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = getelementptr inbounds i8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 5) to i8*), i64 %25
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %144

30:                                               ; preds = %12, %2
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @BZ, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8, i8* %3, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @VR, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36, %30
  %43 = load i8, i8* %3, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @BZ, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = getelementptr inbounds i8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 4) to i8*), i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %143

54:                                               ; preds = %36
  %55 = load i8, i8* %3, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @PID, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 3), align 4
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %142

63:                                               ; preds = %54
  %64 = load i8, i8* %3, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @SRS, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i8, i8* bitcast (%struct.TYPE_4__* @reg to i8*), align 4
  %71 = zext i8 %70 to i32
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %141

73:                                               ; preds = %63
  %74 = load i8, i8* %3, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @WZ, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i16, i16* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 2) to i16*), align 4
  %81 = zext i16 %80 to i32
  %82 = load i32*, i32** %4, align 8
  store i32 %81, i32* %82, align 4
  br label %140

83:                                               ; preds = %73
  %84 = load i8, i8* %3, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @EXS, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %85, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load i8, i8* %3, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @PC, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %91, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i8, i8* %3, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8, i8* @EXS, align 1
  %99 = sext i8 %98 to i32
  %100 = sub nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = getelementptr inbounds i8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 1) to i8*), i64 %102
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %4, align 8
  store i32 %105, i32* %106, align 4
  br label %139

107:                                              ; preds = %89, %83
  %108 = load i8, i8* %3, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* @S0, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sge i32 %109, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load i8, i8* %3, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @S15, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sle i32 %115, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 0), align 4
  %121 = mul nsw i32 %120, 16
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = getelementptr inbounds i8, i8* bitcast (%struct.TYPE_3__* @sreg to i8*), i64 %123
  %125 = load i8, i8* %3, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* @S0, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = getelementptr inbounds i8, i8* %124, i64 %131
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %4, align 8
  store i32 %134, i32* %135, align 4
  br label %138

136:                                              ; preds = %113, %107
  %137 = load i32, i32* @E05, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %119
  br label %139

139:                                              ; preds = %138, %95
  br label %140

140:                                              ; preds = %139, %79
  br label %141

141:                                              ; preds = %140, %69
  br label %142

142:                                              ; preds = %141, %60
  br label %143

143:                                              ; preds = %142, %42
  br label %144

144:                                              ; preds = %143, %18
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
