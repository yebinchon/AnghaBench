; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_GetFreeFifoBytes_D.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_GetFreeFifoBytes_D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @GetFreeFifoBytes_D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFreeFifoBytes_D(%struct.IsdnCardState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %34, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %22
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %22
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
