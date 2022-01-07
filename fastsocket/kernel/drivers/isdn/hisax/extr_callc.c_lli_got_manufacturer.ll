; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_got_manufacturer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_got_manufacturer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Channel = type { i32 }
%struct.IsdnCardState = type { i64, i32 (%struct.IsdnCardState*, i32, i32)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@ISDN_CTYPE_ELSA = common dso_local global i64 0, align 8
@ISDN_CTYPE_ELSA_PNP = common dso_local global i64 0, align 8
@ISDN_CTYPE_ELSA_PCI = common dso_local global i64 0, align 8
@CARD_AUX_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Channel*, %struct.IsdnCardState*, %struct.TYPE_7__*)* @lli_got_manufacturer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_got_manufacturer(%struct.Channel* %0, %struct.IsdnCardState* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.Channel*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.Channel* %0, %struct.Channel** %4, align 8
  store %struct.IsdnCardState* %1, %struct.IsdnCardState** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISDN_CTYPE_ELSA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISDN_CTYPE_ELSA_PNP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ISDN_CTYPE_ELSA_PCI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18, %12, %3
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 1
  %34 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %33, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %36 = load i32, i32* @CARD_AUX_IND, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %34(%struct.IsdnCardState* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  br label %42

42:                                               ; preds = %41, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
