; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_ReadJADE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_ReadJADE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.IsdnCardState*, i32, i64)* @ReadJADE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadJADE(%struct.IsdnCardState* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 192, i32 128
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i32 [ 0, %20 ], [ %25, %21 ]
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %17, %28
  %30 = call i64 @readreg(i32 %11, i32 %16, i64 %29)
  ret i64 %30
}

declare dso_local i64 @readreg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
