; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_set_audmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_set_audmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64 }

@V4L2_TUNER_SUB_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1_LANG2 = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_LANG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp34xxg_set_audmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp34xxg_set_audmode(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.msp_state* @to_state(i32 %5)
  store %struct.msp_state* %6, %struct.msp_state** %3, align 8
  %7 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %8 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %13 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @V4L2_TUNER_SUB_SAP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %20 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_TUNER_MODE_LANG1_LANG2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %26 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_TUNER_MODE_LANG2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %18
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = call i32 @msp_write_dem(%struct.i2c_client* %31, i32 32, i32 33)
  br label %36

33:                                               ; preds = %24, %11
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = call i32 @msp_write_dem(%struct.i2c_client* %34, i32 32, i32 32)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %39 = call i32 @msp34xxg_set_sources(%struct.i2c_client* %38)
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp34xxg_set_sources(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
