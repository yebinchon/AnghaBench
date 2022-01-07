; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_params = type { i32 }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32 }

@RANGEOK = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"----> RANGEOK !\00", align 1
@OUTOFRANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"----> OUT OF RANGE !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_check_range(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %7, i32 0, i32 2
  store %struct.stb0899_internal* %8, %struct.stb0899_internal** %3, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %10 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %9, i32 0, i32 1
  store %struct.stb0899_params* %10, %struct.stb0899_params** %4, align 8
  %11 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %12 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 2000
  store i32 %14, i32* %5, align 4
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 %17, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %29 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp sge i32 %27, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %37 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp sle i32 %35, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* @RANGEOK, align 4
  %44 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %45 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %47 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FE_DEBUG, align 4
  %50 = call i32 @dprintk(i32 %48, i32 %49, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %60

51:                                               ; preds = %34, %1
  %52 = load i32, i32* @OUTOFRANGE, align 4
  %53 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %54 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %56 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FE_DEBUG, align 4
  %59 = call i32 @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %51, %42
  %61 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %62 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
