; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_newl3state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_newl3state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, i32 }

@L3_DEB_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"newstate cr %d %d --> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newl3state(%struct.l3_process* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %6 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @L3_DEB_STATE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %13 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  %19 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @l3_debug(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %27 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @l3_debug(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
