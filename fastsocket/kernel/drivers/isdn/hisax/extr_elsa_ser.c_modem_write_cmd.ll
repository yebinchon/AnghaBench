; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_modem_write_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_modem_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@MAX_MODEM_BUF = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32*, i32)* @modem_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modem_write_cmd(%struct.IsdnCardState* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %126

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_MODEM_BUF, align 4
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %16, %21
  %23 = icmp sgt i32 %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %126

25:                                               ; preds = %14
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @MAX_MODEM_BUF, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAX_MODEM_BUF, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %25
  %48 = load i32, i32* @MAX_MODEM_BUF, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i64 %58, i32* %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %62
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %47, %25
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @memcpy(i64 %84, i32* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %76
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UART_IER_THRI, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @UART_IER_THRI, align 4
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %113 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 8
  %118 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %119 = load i32, i32* @UART_IER, align 4
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %121 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @serial_outp(%struct.IsdnCardState* %118, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %13, %24, %110, %101, %76
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @serial_outp(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
