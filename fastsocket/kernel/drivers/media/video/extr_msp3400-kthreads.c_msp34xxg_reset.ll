; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i32, i64, i64 }

@msp_stereo_thresh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp34xxg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp34xxg_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.msp_state* @to_state(i32 %7)
  store %struct.msp_state* %8, %struct.msp_state** %3, align 8
  %9 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %10 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 3
  %13 = and i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %15 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @msp_reset(%struct.i2c_client* %16)
  %18 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %25 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @msp_write_dem(%struct.i2c_client* %23, i32 64, i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %30 = call i32 @msp34xxg_modus(%struct.i2c_client* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 256, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @msp_write_dem(%struct.i2c_client* %37, i32 48, i32 %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = call i32 @msp34xxg_set_sources(%struct.i2c_client* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %43 = call i32 @msp_write_dsp(%struct.i2c_client* %42, i32 13, i32 6400)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = call i32 @msp_write_dsp(%struct.i2c_client* %44, i32 14, i32 12288)
  %46 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %47 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = call i32 @msp_write_dsp(%struct.i2c_client* %51, i32 16, i32 23040)
  br label %53

53:                                               ; preds = %50, %28
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = load i32, i32* @msp_stereo_thresh, align 4
  %56 = call i32 @msp_write_dem(%struct.i2c_client* %54, i32 34, i32 %55)
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp34xxg_modus(%struct.i2c_client*) #1

declare dso_local i32 @msp34xxg_set_sources(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
