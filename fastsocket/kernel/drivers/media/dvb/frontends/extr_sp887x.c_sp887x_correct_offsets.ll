; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_correct_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_correct_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp887x_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sp887x_correct_offsets.srate_correction = internal constant [3 x i32] [i32 1879617, i32 4544878, i32 8098561], align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sp887x_state*, %struct.dvb_frontend_parameters*, i32)* @sp887x_correct_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp887x_correct_offsets(%struct.sp887x_state* %0, %struct.dvb_frontend_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.sp887x_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sp887x_state* %0, %struct.sp887x_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %8, align 4
  store i32 61003, i32* %9, align 4
  store i32 36000000, i32* %10, align 4
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INVERSION_ON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %39, 333
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @divide(i32 %40, i32 %41, i32* null, i32* %12)
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INVERSION_ON, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 12
  %58 = call i32 @sp887x_writereg(%struct.sp887x_state* %52, i32 793, i32 %57)
  %59 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 4095
  %65 = call i32 @sp887x_writereg(%struct.sp887x_state* %59, i32 794, i32 %64)
  %66 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %67 = load i32, i32* %12, align 4
  %68 = ashr i32 %67, 12
  %69 = call i32 @sp887x_writereg(%struct.sp887x_state* %66, i32 777, i32 %68)
  %70 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 4095
  %73 = call i32 @sp887x_writereg(%struct.sp887x_state* %70, i32 778, i32 %72)
  ret void
}

declare dso_local i32 @divide(i32, i32, i32*, i32*) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
