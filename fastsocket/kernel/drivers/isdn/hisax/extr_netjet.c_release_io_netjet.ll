; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_release_io_netjet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_release_io_netjet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NETJET_IRQMASK0 = common dso_local global i64 0, align 8
@NETJET_IRQMASK1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_io_netjet(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NETJET_IRQMASK0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @byteout(i64 %9, i32 0)
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NETJET_IRQMASK1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @byteout(i64 %17, i32 0)
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %20 = call i32 @releasetiger(%struct.IsdnCardState* %19)
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @release_region(i64 %25, i32 256)
  ret void
}

declare dso_local i32 @byteout(i64, i32) #1

declare dso_local i32 @releasetiger(%struct.IsdnCardState*) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
