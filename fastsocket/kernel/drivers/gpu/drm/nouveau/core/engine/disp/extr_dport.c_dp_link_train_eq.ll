; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { i32*, i32 }

@DPCD_LS04_INTERLANE_ALIGN_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CR_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CHANNEL_EQ_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_SYMBOL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_state*)* @dp_link_train_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_link_train_eq(%struct.dp_state* %0) #0 {
  %2 = alloca %struct.dp_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dp_state* %0, %struct.dp_state** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %9 = call i32 @dp_set_training_pattern(%struct.dp_state* %8, i32 2)
  br label %10

10:                                               ; preds = %88, %1
  %11 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %12 = call i64 @dp_link_train_update(%struct.dp_state* %11, i32 400)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %90

15:                                               ; preds = %10
  %16 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %17 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DPCD_LS04_INTERLANE_ALIGN_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %69, %15
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %30 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i1 [ false, %27 ], [ %35, %33 ]
  br i1 %37, label %38, label %72

38:                                               ; preds = %36
  %39 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %40 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1
  %49 = mul nsw i32 %48, 4
  %50 = ashr i32 %46, %49
  %51 = and i32 %50, 15
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DPCD_LS02_LANE0_CR_DONE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DPCD_LS02_LANE0_CHANNEL_EQ_DONE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DPCD_LS02_LANE0_SYMBOL_LOCKED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %57
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %27

72:                                               ; preds = %36
  %73 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %74 = call i64 @dp_link_train_commit(%struct.dp_state* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %90

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = icmp sle i32 %86, 5
  br label %88

88:                                               ; preds = %84, %81, %78
  %89 = phi i1 [ false, %81 ], [ false, %78 ], [ %87, %84 ]
  br i1 %89, label %10, label %90

90:                                               ; preds = %88, %76, %14
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 -1
  ret i32 %94
}

declare dso_local i32 @dp_set_training_pattern(%struct.dp_state*, i32) #1

declare dso_local i64 @dp_link_train_update(%struct.dp_state*, i32) #1

declare dso_local i64 @dp_link_train_commit(%struct.dp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
