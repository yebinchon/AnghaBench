; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"using default timf\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"using updated timf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_bandwidth(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 6000, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %11 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %9
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 65535
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %26, i32 29, i32 %29)
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 30, i32 %33)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
