; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_pid_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_pid_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"PID filter enabled %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib7000m_pid_filter_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib7000m_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %8, align 8
  store %struct.dib7000m_state* %9, %struct.dib7000m_state** %5, align 8
  %10 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %12 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 294, %13
  %15 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %10, i64 %14)
  %16 = and i32 %15, 65519
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 1
  %19 = shl i32 %18, 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %25 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %26 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 294, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %24, i64 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i64) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
