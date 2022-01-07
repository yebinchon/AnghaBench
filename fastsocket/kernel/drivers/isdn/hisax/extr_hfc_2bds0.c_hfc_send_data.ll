; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_hfc_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_hfc_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32 }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"send_data %d blocked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @hfc_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfc_send_data(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 1
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  store %struct.IsdnCardState* %6, %struct.IsdnCardState** %3, align 8
  %7 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 0
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.BCState*, %struct.BCState** %2, align 8
  %14 = call i32 @hfc_fill_fifo(%struct.BCState* %13)
  %15 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 0
  %18 = call i32 @test_and_clear_bit(i32 %15, i32* %17)
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = load %struct.BCState*, %struct.BCState** %2, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @debugl1(%struct.IsdnCardState* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hfc_fill_fifo(%struct.BCState*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
