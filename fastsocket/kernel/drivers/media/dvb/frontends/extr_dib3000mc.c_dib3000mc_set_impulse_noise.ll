; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_impulse_noise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_impulse_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { i32 }

@impulse_noise_val = common dso_local global i32* null, align 8
@TRANSMISSION_MODE_8K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib3000mc_state*, i32, i64)* @dib3000mc_set_impulse_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dib3000mc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 58, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 87
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** @impulse_noise_val, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 58
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %12, i32 %13, i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @TRANSMISSION_MODE_8K, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %30 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %29, i32 58, i32 59)
  %31 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %32 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %31, i32 84, i32 0)
  %33 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %34 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %33, i32 85, i32 33280)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %37 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %36, i32 34, i32 4756)
  %38 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %39 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %38, i32 35, i32 8184)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %44 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %45 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %44, i32 55)
  %46 = or i32 %45, 1024
  %47 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %43, i32 55, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
