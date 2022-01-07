; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"using default timf\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"using updated timf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %8 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %10 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  br label %24

18:                                               ; preds = %2
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %21 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, 50
  %28 = mul nsw i32 %25, %27
  %29 = sdiv i32 %28, 160
  store i32 %29, i32* %5, align 4
  %30 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 65535
  %34 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %30, i32 23, i32 %33)
  %35 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65535
  %38 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %35, i32 24, i32 %37)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
