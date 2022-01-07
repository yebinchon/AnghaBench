; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_get_bbgain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_get_bbgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110x_state* }
%struct.stv6110x_state = type { i32* }

@STV6110x_CTRL2 = common dso_local global i64 0, align 8
@CTRL2_BBGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv6110x_get_bbgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_get_bbgain(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv6110x_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  store %struct.stv6110x_state* %8, %struct.stv6110x_state** %5, align 8
  %9 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %10 = load i64, i64* @STV6110x_CTRL2, align 8
  %11 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %12 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @STV6110x_CTRL2, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @stv6110x_read_reg(%struct.stv6110x_state* %9, i64 %10, i32* %15)
  %17 = load i32, i32* @CTRL2_BBGAIN, align 4
  %18 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %19 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @STV6110x_CTRL2, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @STV6110x_GETFIELD(i32 %17, i32 %23)
  %25 = mul nsw i32 2, %24
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  ret i32 0
}

declare dso_local i32 @stv6110x_read_reg(%struct.stv6110x_state*, i64, i32*) #1

declare dso_local i32 @STV6110x_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
