; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_ReadISAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_ReadISAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32)* @ReadISAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadISAC(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 131, label %11
    i32 130, label %18
    i32 128, label %26
    i32 129, label %26
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 8
  %14 = and i32 %13, 61440
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 15
  %17 = or i32 %14, %16
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %2, %11
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @readreg(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2, %2
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 128, %32
  %34 = call i32 @readreg_ipac(i32 %31, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %26, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @readreg(i32, i32) #1

declare dso_local i32 @readreg_ipac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
