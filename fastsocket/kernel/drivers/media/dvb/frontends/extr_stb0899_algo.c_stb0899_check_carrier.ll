; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_CFD = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@STB0899_DSTATUS = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"--------------------> STB0899_DSTATUS=[0x%02x]\00", align 1
@CARRIER_FOUND = common dso_local global i32 0, align 4
@CARRIEROK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"-------------> CARRIEROK !\00", align 1
@NOCARRIER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"-------------> NOCARRIER !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_check_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_check_carrier(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %5 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %6 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %5, i32 0, i32 1
  store %struct.stb0899_internal* %6, %struct.stb0899_internal** %3, align 8
  %7 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %8 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @msleep(i32 %9)
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = load i32, i32* @STB0899_CFD, align 4
  %13 = call i32 @stb0899_read_reg(%struct.stb0899_state* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @CFD_ON, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @STB0899_SETFIELD_VAL(i32 %14, i32 %15, i32 1)
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = load i32, i32* @STB0899_CFD, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @stb0899_write_reg(%struct.stb0899_state* %17, i32 %18, i32 %19)
  %21 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %22 = load i32, i32* @STB0899_DSTATUS, align 4
  %23 = call i32 @stb0899_read_reg(%struct.stb0899_state* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %25 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FE_DEBUG, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %26, i32 %27, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @CARRIER_FOUND, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @STB0899_GETFIELD(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load i32, i32* @CARRIEROK, align 4
  %36 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %37 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %39 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FE_DEBUG, align 4
  %42 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %40, i32 %41, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %52

43:                                               ; preds = %1
  %44 = load i32, i32* @NOCARRIER, align 4
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %48 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FE_DEBUG, align 4
  %51 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %49, i32 %50, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %54 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @STB0899_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
