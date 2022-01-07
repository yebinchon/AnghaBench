; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { i32*, i32, i32* }

@DPCD_LC03_VOLTAGE_SWING_SET = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CR_DONE = common dso_local global i32 0, align 4
@DPCD_LC03_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_state*)* @dp_link_train_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_link_train_cr(%struct.dp_state* %0) #0 {
  %2 = alloca %struct.dp_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dp_state* %0, %struct.dp_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %10 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %17 = call i32 @dp_set_training_pattern(%struct.dp_state* %16, i32 1)
  br label %18

18:                                               ; preds = %98, %1
  %19 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %20 = call i64 @dp_link_train_commit(%struct.dp_state* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %24 = call i64 @dp_link_train_update(%struct.dp_state* %23, i32 100)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %100

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %31 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %36 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 1
  %45 = mul nsw i32 %44, 4
  %46 = ashr i32 %42, %45
  %47 = and i32 %46, 15
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DPCD_LS02_LANE0_CR_DONE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  %53 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %54 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DPCD_LC03_MAX_SWING_REACHED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %52
  br label %69

65:                                               ; preds = %34
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %28

69:                                               ; preds = %64, %28
  %70 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %71 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %81 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %79, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = icmp slt i32 %96, 5
  br label %98

98:                                               ; preds = %94, %91, %88
  %99 = phi i1 [ false, %91 ], [ false, %88 ], [ %97, %94 ]
  br i1 %99, label %18, label %100

100:                                              ; preds = %98, %26
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 -1
  ret i32 %104
}

declare dso_local i32 @dp_set_training_pattern(%struct.dp_state*, i32) #1

declare dso_local i64 @dp_link_train_commit(%struct.dp_state*) #1

declare dso_local i64 @dp_link_train_update(%struct.dp_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
