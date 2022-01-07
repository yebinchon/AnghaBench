; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_wbd_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_wbd_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BAND_VHF = common dso_local global i64 0, align 8
@BAND_CBAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"wbd-target: %d dB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*, i32)* @dib0090_wbd_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_wbd_target(%struct.dib0090_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 250, i32* %5, align 4
  %6 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %7 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BAND_VHF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 650, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BAND_VHF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %26 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BAND_CBAND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %32 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %38 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %39 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i64 @dib0090_wbd_to_db(%struct.dib0090_state* %37, i64 %43)
  %45 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %46 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %48 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i64 @dib0090_wbd_to_db(%struct.dib0090_state*, i64) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
