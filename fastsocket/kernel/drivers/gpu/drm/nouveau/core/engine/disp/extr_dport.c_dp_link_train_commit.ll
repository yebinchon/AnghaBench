; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32)* }

@DPCD_LC03_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@DPCD_LC03_MAX_PRE_EMPHASIS_REACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"config lane %d %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_state*)* @dp_link_train_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_link_train_commit(%struct.dp_state* %0) #0 {
  %2 = alloca %struct.dp_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dp_state* %0, %struct.dp_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %97, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %10 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %100

13:                                               ; preds = %7
  %14 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %15 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 1
  %19 = add nsw i32 4, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 1
  %25 = mul nsw i32 %24, 4
  %26 = ashr i32 %22, %25
  %27 = and i32 %26, 15
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 12
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 3
  %33 = ashr i32 %32, 0
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 3
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %39 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %56

46:                                               ; preds = %13
  %47 = load i32, i32* @DPCD_LC03_MAX_SWING_REACHED, align 4
  %48 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %49 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %47
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %13
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* @DPCD_LC03_MAX_PRE_EMPHASIS_REACHED, align 4
  %61 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %62 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %60
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %59, %56
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %72 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %77)
  %79 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %80 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %79, i32 0, i32 7
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %82, align 8
  %84 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %85 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %88 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %91 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 %83(i32 %86, i32 %89, i32 %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %69
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %7

100:                                              ; preds = %7
  %101 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %102 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DPCD_LC03(i32 0)
  %105 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %106 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @nv_wraux(i32 %103, i32 %104, i32* %107, i32 4)
  ret i32 %108
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @nv_wraux(i32, i32, i32*, i32) #1

declare dso_local i32 @DPCD_LC03(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
