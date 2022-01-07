; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_write_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_write_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_7__*, %struct.IsdnCardState* }
%struct.TYPE_7__ = type { i32 }
%struct.IsdnCardState = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@MAX_MODEM_BUF = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BCState*)* @write_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_modem(%struct.BCState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.BCState*, %struct.BCState** %3, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 1
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %10, align 8
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %5, align 8
  %12 = load %struct.BCState*, %struct.BCState** %3, align 8
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

17:                                               ; preds = %1
  %18 = load %struct.BCState*, %struct.BCState** %3, align 8
  %19 = getelementptr inbounds %struct.BCState, %struct.BCState* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %165

25:                                               ; preds = %17
  %26 = load %struct.BCState*, %struct.BCState** %3, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MAX_MODEM_BUF, align 4
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %32, %37
  %39 = icmp sgt i32 %31, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = load i32, i32* @MAX_MODEM_BUF, align 4
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %41, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %25
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @MAX_MODEM_BUF, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MAX_MODEM_BUF, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %48
  %71 = load i32, i32* @MAX_MODEM_BUF, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load %struct.BCState*, %struct.BCState** %3, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @skb_copy_from_linear_data(%struct.TYPE_7__* %76, i64 %84, i32 %85)
  %87 = load %struct.BCState*, %struct.BCState** %3, align 8
  %88 = getelementptr inbounds %struct.BCState, %struct.BCState* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @skb_pull(%struct.TYPE_7__* %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %92
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %70, %48
  %104 = load %struct.BCState*, %struct.BCState** %3, align 8
  %105 = getelementptr inbounds %struct.BCState, %struct.BCState* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %108 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @skb_copy_from_linear_data(%struct.TYPE_7__* %106, i64 %114, i32 %115)
  %117 = load %struct.BCState*, %struct.BCState** %3, align 8
  %118 = getelementptr inbounds %struct.BCState, %struct.BCState* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @skb_pull(%struct.TYPE_7__* %119, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %124 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %122
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %133 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %103
  %139 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %140 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @UART_IER_THRI, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @UART_IER_THRI, align 4
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %150 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %148
  store i32 %154, i32* %152, align 8
  %155 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %156 = load i32, i32* @UART_IER, align 4
  %157 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %158 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @serial_outp(%struct.IsdnCardState* %155, i32 %156, i32 %161)
  br label %163

163:                                              ; preds = %147, %138, %103
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %24, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @skb_copy_from_linear_data(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @serial_outp(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
