; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }

@STB0899_GPIO00CFG = common dso_local global i32 0, align 4
@STB0899_GPIO01CFG = common dso_local global i32 0, align 4
@STB0899_GPIO02CFG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stb0899_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stb0899_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %8, align 8
  store %struct.stb0899_state* %9, %struct.stb0899_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %41 [
    i32 130, label %11
    i32 129, label %21
    i32 128, label %31
  ]

11:                                               ; preds = %2
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %13 = load i32, i32* @STB0899_GPIO00CFG, align 4
  %14 = call i32 @stb0899_write_reg(%struct.stb0899_state* %12, i32 %13, i32 130)
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %16 = load i32, i32* @STB0899_GPIO01CFG, align 4
  %17 = call i32 @stb0899_write_reg(%struct.stb0899_state* %15, i32 %16, i32 2)
  %18 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %19 = load i32, i32* @STB0899_GPIO02CFG, align 4
  %20 = call i32 @stb0899_write_reg(%struct.stb0899_state* %18, i32 %19, i32 0)
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %23 = load i32, i32* @STB0899_GPIO00CFG, align 4
  %24 = call i32 @stb0899_write_reg(%struct.stb0899_state* %22, i32 %23, i32 2)
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %26 = load i32, i32* @STB0899_GPIO01CFG, align 4
  %27 = call i32 @stb0899_write_reg(%struct.stb0899_state* %25, i32 %26, i32 2)
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %29 = load i32, i32* @STB0899_GPIO02CFG, align 4
  %30 = call i32 @stb0899_write_reg(%struct.stb0899_state* %28, i32 %29, i32 130)
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %33 = load i32, i32* @STB0899_GPIO00CFG, align 4
  %34 = call i32 @stb0899_write_reg(%struct.stb0899_state* %32, i32 %33, i32 130)
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %36 = load i32, i32* @STB0899_GPIO01CFG, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %35, i32 %36, i32 130)
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %39 = load i32, i32* @STB0899_GPIO02CFG, align 4
  %40 = call i32 @stb0899_write_reg(%struct.stb0899_state* %38, i32 %39, i32 130)
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %31, %21, %11
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
