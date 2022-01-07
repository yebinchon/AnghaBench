; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_transmit_enquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_transmit_enquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FLG_OWN_BUSY = common dso_local global i32 0, align 4
@RNR = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@RR = common dso_local global i32 0, align 4
@FLG_ACK_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*)* @transmit_enquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_enquiry(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  %3 = load i32, i32* @FLG_OWN_BUSY, align 4
  %4 = load %struct.PStack*, %struct.PStack** %2, align 8
  %5 = getelementptr inbounds %struct.PStack, %struct.PStack* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %3, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.PStack*, %struct.PStack** %2, align 8
  %11 = load i32, i32* @RNR, align 4
  %12 = load i32, i32* @CMD, align 4
  %13 = call i32 @enquiry_cr(%struct.PStack* %10, i32 %11, i32 %12, i32 1)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.PStack*, %struct.PStack** %2, align 8
  %16 = load i32, i32* @RR, align 4
  %17 = load i32, i32* @CMD, align 4
  %18 = call i32 @enquiry_cr(%struct.PStack* %15, i32 %16, i32 %17, i32 1)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* @FLG_ACK_PEND, align 4
  %21 = load %struct.PStack*, %struct.PStack** %2, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @test_and_clear_bit(i32 %20, i32* %23)
  %25 = load %struct.PStack*, %struct.PStack** %2, align 8
  %26 = call i32 @start_t200(%struct.PStack* %25, i32 9)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @enquiry_cr(%struct.PStack*, i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @start_t200(%struct.PStack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
