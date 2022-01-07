; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }

@STB0899_SYNTCTRL = common dso_local global i32 0, align 4
@STB0899_SELOSCI = common dso_local global i32 0, align 4
@STB0899_STOPCLK1 = common dso_local global i32 0, align 4
@STB0899_STOPCLK2 = common dso_local global i32 0, align 4
@STB0899_POSTPROC_GPIO_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stb0899_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_wakeup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stb0899_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  store %struct.stb0899_state* %8, %struct.stb0899_state** %5, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %5, align 8
  %10 = load i32, i32* @STB0899_SYNTCTRL, align 4
  %11 = load i32, i32* @STB0899_SELOSCI, align 4
  %12 = call i32 @stb0899_write_reg(%struct.stb0899_state* %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %5, align 8
  %18 = load i32, i32* @STB0899_STOPCLK1, align 4
  %19 = call i32 @stb0899_write_reg(%struct.stb0899_state* %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %16
  %24 = load %struct.stb0899_state*, %struct.stb0899_state** %5, align 8
  %25 = load i32, i32* @STB0899_STOPCLK2, align 4
  %26 = call i32 @stb0899_write_reg(%struct.stb0899_state* %24, i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.stb0899_state*, %struct.stb0899_state** %5, align 8
  %32 = load i32, i32* @STB0899_POSTPROC_GPIO_POWER, align 4
  %33 = call i32 @stb0899_postproc(%struct.stb0899_state* %31, i32 %32, i32 1)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28, %21, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_postproc(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
