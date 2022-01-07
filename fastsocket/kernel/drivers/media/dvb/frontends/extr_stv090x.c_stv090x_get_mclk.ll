; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_mclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.stv090x_config* }
%struct.stv090x_config = type { i32 }

@STV090x_NCOARSE = common dso_local global i32 0, align 4
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@SELX1RATIO_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_get_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_mclk(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  %3 = alloca %struct.stv090x_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %8 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %7, i32 0, i32 0
  %9 = load %struct.stv090x_config*, %struct.stv090x_config** %8, align 8
  store %struct.stv090x_config* %9, %struct.stv090x_config** %3, align 8
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %11 = load i32, i32* @STV090x_NCOARSE, align 4
  %12 = call i32 @stv090x_read_reg(%struct.stv090x_state* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %14 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %15 = call i32 @stv090x_read_reg(%struct.stv090x_state* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SELX1RATIO_FIELD, align 4
  %18 = call i64 @STV090x_GETFIELD(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 4, i32 6
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.stv090x_config*, %struct.stv090x_config** %3, align 8
  %25 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %27, %28
  ret i32 %29
}

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i64 @STV090x_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
