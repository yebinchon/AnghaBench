; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_WriteISAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_WriteISAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32, i32)* @WriteISAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteISAC(%struct.IsdnCardState* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %38 [
    i32 131, label %12
    i32 130, label %19
    i32 128, label %28
    i32 129, label %28
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 8
  %15 = and i32 %14, 61440
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 15
  %18 = or i32 %15, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %3, %12
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @writereg(i32 %24, i32 %25, i32 %26)
  br label %38

28:                                               ; preds = %3, %3
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 128, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @writereg_ipac(i32 %33, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %3, %28, %19
  ret void
}

declare dso_local i32 @writereg(i32, i32, i32) #1

declare dso_local i32 @writereg_ipac(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
