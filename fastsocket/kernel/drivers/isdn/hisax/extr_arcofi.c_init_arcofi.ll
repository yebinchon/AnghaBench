; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_init_arcofi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_init_arcofi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }

@arcofi_timer = common dso_local global i64 0, align 8
@HW_ARCOFI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_arcofi(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load i64, i64* @arcofi_timer, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i8* %4, i8** %9, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = ptrtoint %struct.IsdnCardState* %10 to i64
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %11, i64* %16, align 8
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32 @init_timer(%struct.TYPE_6__* %20)
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load i32, i32* @HW_ARCOFI, align 4
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
