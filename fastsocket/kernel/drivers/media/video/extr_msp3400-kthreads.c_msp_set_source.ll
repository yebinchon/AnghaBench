; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp_set_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64 }

@msp_dolby = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @msp_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp_set_source(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.msp_state* @to_state(i32 %7)
  store %struct.msp_state* %8, %struct.msp_state** %5, align 8
  %9 = load i64, i64* @msp_dolby, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i32 @msp_write_dsp(%struct.i2c_client* %12, i32 8, i32 1312)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call i32 @msp_write_dsp(%struct.i2c_client* %14, i32 9, i32 1568)
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @msp_write_dsp(%struct.i2c_client* %17, i32 8, i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @msp_write_dsp(%struct.i2c_client* %20, i32 9, i32 %21)
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @msp_write_dsp(%struct.i2c_client* %24, i32 10, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @msp_write_dsp(%struct.i2c_client* %27, i32 11, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @msp_write_dsp(%struct.i2c_client* %30, i32 12, i32 %31)
  %33 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %34 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @msp_write_dsp(%struct.i2c_client* %38, i32 65, i32 %39)
  br label %41

41:                                               ; preds = %37, %23
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
