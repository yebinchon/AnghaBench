; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24113.c_cx24113_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24113.c_cx24113_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24113_state = type { i64 }

@REV_CX24113 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24113_state*, i32)* @cx24113_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24113_enable(%struct.cx24113_state* %0, i32 %1) #0 {
  %3 = alloca %struct.cx24113_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx24113_state* %0, %struct.cx24113_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %7 = call i32 @cx24113_readreg(%struct.cx24113_state* %6, i32 33)
  %8 = and i32 %7, 192
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %12 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REV_CX24113, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cx24113_writereg(%struct.cx24113_state* %20, i32 33, i32 %21)
  ret i32 %22
}

declare dso_local i32 @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_writereg(%struct.cx24113_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
