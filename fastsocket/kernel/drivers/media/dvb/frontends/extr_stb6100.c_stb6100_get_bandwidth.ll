; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_get_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_get_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb6100_state* }
%struct.stb6100_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STB6100_F = common dso_local global i32 0, align 4
@STB6100_F_F = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bandwidth = %u Hz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb6100_get_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_get_bandwidth(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stb6100_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb6100_state*, %struct.stb6100_state** %10, align 8
  store %struct.stb6100_state* %11, %struct.stb6100_state** %8, align 8
  %12 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %13 = load i32, i32* @STB6100_F, align 4
  %14 = call i32 @stb6100_read_reg(%struct.stb6100_state* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @STB6100_F_F, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 5
  %25 = mul nsw i32 %24, 2000
  %26 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %27 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %30 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %35 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @verbose, align 4
  %38 = load i32, i32* @FE_DEBUG, align 4
  %39 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %40 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dprintk(i32 %37, i32 %38, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %19, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @stb6100_read_reg(%struct.stb6100_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
