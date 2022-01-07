; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_w6692_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_w6692_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@W_IMASK = common dso_local global i32 0, align 4
@W6692_USR = common dso_local global i32 0, align 4
@W_XDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @w6692_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w6692_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %42 [
    i32 129, label %9
    i32 130, label %12
    i32 131, label %38
    i32 128, label %41
  ]

9:                                                ; preds = %3
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %11 = call i32 @resetW6692(%struct.IsdnCardState* %10)
  store i32 0, i32* %4, align 4
  br label %43

12:                                               ; preds = %3
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %14, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = load i32, i32* @W_IMASK, align 4
  %18 = call i32 %15(%struct.IsdnCardState* %16, i32 %17, i32 255)
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @release_region(i32 %23, i32 256)
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @W6692_USR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %12
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %32, align 8
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %35 = load i32, i32* @W_XDATA, align 4
  %36 = call i32 %33(%struct.IsdnCardState* %34, i32 %35, i32 4)
  br label %37

37:                                               ; preds = %30, %12
  store i32 0, i32* %4, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %40 = call i32 @initW6692(%struct.IsdnCardState* %39, i32 3)
  store i32 0, i32* %4, align 4
  br label %43

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %38, %37, %9
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @resetW6692(%struct.IsdnCardState*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @initW6692(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
