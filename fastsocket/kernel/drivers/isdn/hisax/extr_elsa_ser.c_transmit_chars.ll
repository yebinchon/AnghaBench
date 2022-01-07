; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"transmit_chars: p(%x) cnt(%x)\00", align 1
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@MAX_MODEM_BUF = common dso_local global i64 0, align 8
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.IsdnCardState* %0, i32* %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @debugl1(%struct.IsdnCardState* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %16)
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load i32, i32* @UART_IER_THRI, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %34 = load i32, i32* @UART_IER, align 4
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @serial_out(%struct.IsdnCardState* %33, i32 %34, i32 %39)
  br label %136

41:                                               ; preds = %2
  store i32 16, i32* %5, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = load i32, i32* @UART_TX, align 4
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds i32, i32* %49, i64 %54
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @serial_outp(%struct.IsdnCardState* %43, i32 %44, i32 %57)
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAX_MODEM_BUF, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %42
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %42
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %42, label %85

85:                                               ; preds = %81, %79
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WAKEUP_CHARS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %95 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @modem_fill(i32 %105)
  br label %107

107:                                              ; preds = %100, %93, %85
  %108 = load i32*, i32** %4, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32*, i32** %4, align 8
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %114 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %112
  %120 = load i32, i32* @UART_IER_THRI, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %129 = load i32, i32* @UART_IER, align 4
  %130 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %131 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @serial_outp(%struct.IsdnCardState* %128, i32 %129, i32 %134)
  br label %136

136:                                              ; preds = %24, %119, %112
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i64, i64) #1

declare dso_local i32 @serial_out(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @serial_outp(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @modem_fill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
