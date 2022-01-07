; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_WriteByteAmd7930.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_WriteByteAmd7930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AMD_CR = common dso_local global i32 0, align 4
@AMD_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i8, i8)* @WriteByteAmd7930 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteByteAmd7930(%struct.IsdnCardState* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i8, i8* %6, align 1
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = mul nsw i32 4, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = call i32 @outb(i8 zeroext %11, i64 %21)
  br label %46

23:                                               ; preds = %3
  %24 = load i8, i8* %5, align 1
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @AMD_CR, align 4
  %31 = mul nsw i32 4, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @outb(i8 zeroext %24, i64 %33)
  %35 = load i8, i8* %6, align 1
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @AMD_DR, align 4
  %42 = mul nsw i32 4, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @outb(i8 zeroext %35, i64 %44)
  br label %46

46:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
