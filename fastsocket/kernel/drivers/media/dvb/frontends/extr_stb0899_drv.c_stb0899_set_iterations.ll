; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_iterations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32 }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@MAX_ITER = common dso_local global i32 0, align 4
@MAX_ITERATIONS = common dso_local global i32 0, align 4
@STB0899_BASE_MAX_ITER = common dso_local global i32 0, align 4
@STB0899_OFF0_MAX_ITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_set_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_set_iterations(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %7, i32 0, i32 1
  store %struct.stb0899_internal* %8, %struct.stb0899_internal** %3, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %10 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %9, i32 0, i32 0
  %11 = load %struct.stb0899_config*, %struct.stb0899_config** %10, align 8
  store %struct.stb0899_config* %11, %struct.stb0899_config** %4, align 8
  %12 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %13 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000
  %16 = mul nsw i32 17, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 410000
  store i32 %18, i32* %5, align 4
  %19 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %20 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000000
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %29 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %34 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32, i32* @STB0899_S2DEMOD, align 4
  %38 = load i32, i32* @MAX_ITER, align 4
  %39 = call i32 @STB0899_READ_S2REG(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @MAX_ITERATIONS, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @STB0899_SETFIELD_VAL(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %45 = load i32, i32* @STB0899_S2DEMOD, align 4
  %46 = load i32, i32* @STB0899_BASE_MAX_ITER, align 4
  %47 = load i32, i32* @STB0899_OFF0_MAX_ITER, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
