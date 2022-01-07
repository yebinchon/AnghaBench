; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_serial167_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_serial167_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyCAR = common dso_local global i64 0, align 8
@CyCCR = common dso_local global i64 0, align 8
@CyENB_XMTR = common dso_local global i8 0, align 1
@CyIER = common dso_local global i64 0, align 8
@CyTxMpty = common dso_local global i8 0, align 1
@pcc2chip = common dso_local global i32* null, align 8
@PccSCCTICR = common dso_local global i64 0, align 8
@PccTPIACKR = common dso_local global i64 0, align 8
@CyLICR = common dso_local global i64 0, align 8
@CyNOTRANS = common dso_local global i8 0, align 1
@CyTEOIR = common dso_local global i64 0, align 8
@CyTDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial167_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @BASE_ADDR, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* @CyCAR, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store volatile i8 %20, i8* %23, align 1
  br label %24

24:                                               ; preds = %30, %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* @CyCCR, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load volatile i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %24

31:                                               ; preds = %24
  %32 = load i8, i8* @CyENB_XMTR, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* @CyCCR, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store volatile i8 %32, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* @CyIER, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load volatile i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i8, i8* @CyTxMpty, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* @CyIER, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store volatile i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %31, %114
  %46 = load i32*, i32** @pcc2chip, align 8
  %47 = load i64, i64* @PccSCCTICR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %45
  %53 = load i32*, i32** @pcc2chip, align 8
  %54 = load i64, i64* @PccTPIACKR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store volatile i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* @CyLICR, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load volatile i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 2
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %52
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8, i8* @CyNOTRANS, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* @CyTEOIR, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store volatile i8 %70, i8* %73, align 1
  br label %115

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* @CyTDR, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store volatile i8 10, i8* %80, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %104

85:                                               ; preds = %74
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* @CyTDR, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store volatile i8 13, i8* %93, align 1
  store i32 1, i32* %12, align 4
  br label %103

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  %97 = load i8, i8* %95, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* @CyTDR, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store volatile i8 %97, i8* %100, align 1
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %94, %90
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* @CyTEOIR, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store volatile i8 0, i8* %107, align 1
  br label %113

108:                                              ; preds = %52
  %109 = load i8, i8* @CyNOTRANS, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* @CyTEOIR, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store volatile i8 %109, i8* %112, align 1
  br label %113

113:                                              ; preds = %108, %104
  br label %114

114:                                              ; preds = %113, %45
  br label %45

115:                                              ; preds = %69
  %116 = load i32, i32* %10, align 4
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* @CyIER, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store volatile i8 %117, i8* %120, align 1
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @local_irq_restore(i64 %121)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
