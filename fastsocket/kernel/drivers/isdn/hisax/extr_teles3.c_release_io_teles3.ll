; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles3.c_release_io_teles3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles3.c_release_io_teles3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64* }

@ISDN_CTYPE_TELESPCMCIA = common dso_local global i64 0, align 8
@ISDN_CTYPE_COMPAQ_ISA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @release_io_teles3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_io_teles3(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ISDN_CTYPE_TELESPCMCIA, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @release_region(i64 %15, i32 96)
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISDN_CTYPE_COMPAQ_ISA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @release_region(i64 %35, i32 1)
  br label %44

37:                                               ; preds = %24
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @release_region(i64 %42, i32 8)
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %47 = call i32 @release_ioregs(%struct.IsdnCardState* %46, i32 7)
  br label %48

48:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @release_ioregs(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
