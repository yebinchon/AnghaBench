; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_set_training_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_set_training_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [21 x i8] c"training pattern %d\0A\00", align 1
@DPCD_LC02 = common dso_local global i32 0, align 4
@DPCD_LC02_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dp_state*, i32)* @dp_set_training_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_set_training_pattern(%struct.dp_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dp_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dp_state* %0, %struct.dp_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %9 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %11, align 8
  %13 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %14 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %17 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %20 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 %12(i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %25 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DPCD_LC02, align 4
  %28 = call i32 @nv_rdaux(i32 %26, i32 %27, i32* %5, i32 1)
  %29 = load i32, i32* @DPCD_LC02_TRAINING_PATTERN_SET, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %37 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DPCD_LC02, align 4
  %40 = call i32 @nv_wraux(i32 %38, i32 %39, i32* %5, i32 1)
  ret void
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @nv_rdaux(i32, i32, i32*, i32) #1

declare dso_local i32 @nv_wraux(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
