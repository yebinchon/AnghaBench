; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel_tsadcc.c_atmel_tsadcc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel_tsadcc.c_atmel_tsadcc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tsadcc = type { i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ATMEL_TSADCC_SR = common dso_local global i32 0, align 4
@ATMEL_TSADCC_IMR = common dso_local global i32 0, align 4
@ATMEL_TSADCC_NOCNT = common dso_local global i32 0, align 4
@ATMEL_TSADCC_MR = common dso_local global i32 0, align 4
@ATMEL_TSADCC_PENDBC = common dso_local global i32 0, align 4
@ATMEL_TSADCC_TRGR = common dso_local global i32 0, align 4
@ATMEL_TSADCC_TRGMOD_NONE = common dso_local global i32 0, align 4
@ATMEL_TSADCC_IDR = common dso_local global i32 0, align 4
@ATMEL_TSADCC_IER = common dso_local global i32 0, align 4
@ATMEL_TSADCC_PENCNT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ATMEL_TSADCC_TRGMOD_PERIOD = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ATMEL_TSADCC_CDR3 = common dso_local global i32 0, align 4
@ATMEL_TSADCC_CDR2 = common dso_local global i32 0, align 4
@ATMEL_TSADCC_CDR1 = common dso_local global i32 0, align 4
@ATMEL_TSADCC_CDR0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_tsadcc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tsadcc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_tsadcc*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.atmel_tsadcc*
  store %struct.atmel_tsadcc* %10, %struct.atmel_tsadcc** %5, align 8
  %11 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %12 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %11, i32 0, i32 3
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %6, align 8
  %14 = load i32, i32* @ATMEL_TSADCC_SR, align 4
  %15 = call i32 @atmel_tsadcc_read(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ATMEL_TSADCC_IMR, align 4
  %17 = call i32 @atmel_tsadcc_read(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ATMEL_TSADCC_NOCNT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %2
  %25 = load i32, i32* @ATMEL_TSADCC_MR, align 4
  %26 = call i32 @atmel_tsadcc_read(i32 %25)
  %27 = load i32, i32* @ATMEL_TSADCC_PENDBC, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @ATMEL_TSADCC_MR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @atmel_tsadcc_write(i32 %29, i32 %30)
  %32 = load i32, i32* @ATMEL_TSADCC_TRGR, align 4
  %33 = load i32, i32* @ATMEL_TSADCC_TRGMOD_NONE, align 4
  %34 = call i32 @atmel_tsadcc_write(i32 %32, i32 %33)
  %35 = load i32, i32* @ATMEL_TSADCC_IDR, align 4
  %36 = call i32 @ATMEL_TSADCC_EOC(i32 3)
  %37 = load i32, i32* @ATMEL_TSADCC_NOCNT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @atmel_tsadcc_write(i32 %35, i32 %38)
  %40 = load i32, i32* @ATMEL_TSADCC_IER, align 4
  %41 = load i32, i32* @ATMEL_TSADCC_PENCNT, align 4
  %42 = call i32 @atmel_tsadcc_write(i32 %40, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = load i32, i32* @BTN_TOUCH, align 4
  %45 = call i32 @input_report_key(%struct.input_dev* %43, i32 %44, i32 0)
  %46 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %47 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = call i32 @input_sync(%struct.input_dev* %48)
  br label %133

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ATMEL_TSADCC_PENCNT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load i32, i32* @ATMEL_TSADCC_MR, align 4
  %57 = call i32 @atmel_tsadcc_read(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @ATMEL_TSADCC_PENDBC, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @ATMEL_TSADCC_IDR, align 4
  %63 = load i32, i32* @ATMEL_TSADCC_PENCNT, align 4
  %64 = call i32 @atmel_tsadcc_write(i32 %62, i32 %63)
  %65 = load i32, i32* @ATMEL_TSADCC_MR, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @atmel_tsadcc_write(i32 %65, i32 %66)
  %68 = load i32, i32* @ATMEL_TSADCC_IER, align 4
  %69 = call i32 @ATMEL_TSADCC_EOC(i32 3)
  %70 = load i32, i32* @ATMEL_TSADCC_NOCNT, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @atmel_tsadcc_write(i32 %68, i32 %71)
  %73 = load i32, i32* @ATMEL_TSADCC_TRGR, align 4
  %74 = load i32, i32* @ATMEL_TSADCC_TRGMOD_PERIOD, align 4
  %75 = or i32 %74, 268369920
  %76 = call i32 @atmel_tsadcc_write(i32 %73, i32 %75)
  br label %132

77:                                               ; preds = %50
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ATMEL_TSADCC_EOC(i32 3)
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  %83 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %84 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = load i32, i32* @ABS_X, align 4
  %90 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %91 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @input_report_abs(%struct.input_dev* %88, i32 %89, i32 %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load i32, i32* @ABS_Y, align 4
  %96 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %97 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %95, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = load i32, i32* @BTN_TOUCH, align 4
  %102 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i32 1)
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = call i32 @input_sync(%struct.input_dev* %103)
  br label %108

105:                                              ; preds = %82
  %106 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %107 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %87
  %109 = load i32, i32* @ATMEL_TSADCC_CDR3, align 4
  %110 = call i32 @atmel_tsadcc_read(i32 %109)
  %111 = shl i32 %110, 10
  %112 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %113 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ATMEL_TSADCC_CDR2, align 4
  %115 = call i32 @atmel_tsadcc_read(i32 %114)
  %116 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %117 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @ATMEL_TSADCC_CDR1, align 4
  %121 = call i32 @atmel_tsadcc_read(i32 %120)
  %122 = shl i32 %121, 10
  %123 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %124 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @ATMEL_TSADCC_CDR0, align 4
  %126 = call i32 @atmel_tsadcc_read(i32 %125)
  %127 = load %struct.atmel_tsadcc*, %struct.atmel_tsadcc** %5, align 8
  %128 = getelementptr inbounds %struct.atmel_tsadcc, %struct.atmel_tsadcc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %108, %77
  br label %132

132:                                              ; preds = %131, %55
  br label %133

133:                                              ; preds = %132, %24
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %134
}

declare dso_local i32 @atmel_tsadcc_read(i32) #1

declare dso_local i32 @atmel_tsadcc_write(i32, i32) #1

declare dso_local i32 @ATMEL_TSADCC_EOC(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
