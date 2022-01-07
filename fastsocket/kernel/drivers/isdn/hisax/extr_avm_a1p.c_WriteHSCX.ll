; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1p.c_WriteHSCX.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1p.c_WriteHSCX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ADDRREG_OFFSET = common dso_local global i64 0, align 8
@HSCX_REG_OFFSET = common dso_local global i64 0, align 8
@HSCX_CH_DIFF = common dso_local global i32 0, align 4
@DATAREG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32, i64, i64)* @WriteHSCX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteHSCX(%struct.IsdnCardState* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = sub nsw i64 %9, 32
  store i64 %10, i64* %7, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADDRREG_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @HSCX_REG_OFFSET, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HSCX_CH_DIFF, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @byteout(i64 %17, i64 %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DATAREG_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @byteout(i64 %33, i64 %34)
  ret void
}

declare dso_local i32 @byteout(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
