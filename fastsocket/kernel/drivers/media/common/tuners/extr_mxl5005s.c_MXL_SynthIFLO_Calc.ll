; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_SynthIFLO_Calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_SynthIFLO_Calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i32, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @MXL_SynthIFLO_Calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MXL_SynthIFLO_Calc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl5005s_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %5, align 8
  store %struct.mxl5005s_state* %6, %struct.mxl5005s_state** %3, align 8
  %7 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %8 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %13 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %16 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %19 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %24 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 400000
  %27 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %28 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  br label %41

29:                                               ; preds = %17
  %30 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %31 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %34 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %32, %37
  %39 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %40 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %29, %22
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
