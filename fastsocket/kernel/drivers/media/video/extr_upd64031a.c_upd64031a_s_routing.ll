; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64031a.c_upd64031a_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64031a.c_upd64031a_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.upd64031a_state = type { i32, i32, i32, i32, i32* }

@UPD64031A_COMPOSITE_EXTERNAL = common dso_local global i32 0, align 4
@UPD64031A_VERTICAL_EXTERNAL = common dso_local global i32 0, align 4
@R00 = common dso_local global i64 0, align 8
@GR_MODE_MASK = common dso_local global i32 0, align 4
@SYNC_CIRCUIT_MASK = common dso_local global i32 0, align 4
@R08 = common dso_local global i64 0, align 8
@DIRECT_3DYCS_CONNECT_MASK = common dso_local global i32 0, align 4
@R05 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @upd64031a_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upd64031a_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.upd64031a_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.upd64031a_state* @to_state(%struct.v4l2_subdev* %13)
  store %struct.upd64031a_state* %14, %struct.upd64031a_state** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 3
  %17 = shl i32 %16, 6
  %18 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %19 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 12
  %22 = shl i32 %21, 4
  %23 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %24 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UPD64031A_COMPOSITE_EXTERNAL, align 4
  %27 = and i32 %25, %26
  %28 = shl i32 %27, 1
  %29 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %30 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UPD64031A_VERTICAL_EXTERNAL, align 4
  %33 = and i32 %31, %32
  %34 = shl i32 %33, 2
  %35 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %36 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %38 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @R00, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GR_MODE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %47 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %45, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %51 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @R00, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SYNC_CIRCUIT_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %60 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %58, %61
  %63 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %64 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %68 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @R08, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DIRECT_3DYCS_CONNECT_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load %struct.upd64031a_state*, %struct.upd64031a_state** %9, align 8
  %77 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %81 = load i64, i64* @R00, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @upd64031a_write(%struct.v4l2_subdev* %80, i64 %81, i32 %82)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = load i64, i64* @R05, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @upd64031a_write(%struct.v4l2_subdev* %84, i64 %85, i32 %86)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %89 = load i64, i64* @R08, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @upd64031a_write(%struct.v4l2_subdev* %88, i64 %89, i32 %90)
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %93 = call i32 @upd64031a_s_frequency(%struct.v4l2_subdev* %92, i32* null)
  ret i32 %93
}

declare dso_local %struct.upd64031a_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @upd64031a_write(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @upd64031a_s_frequency(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
