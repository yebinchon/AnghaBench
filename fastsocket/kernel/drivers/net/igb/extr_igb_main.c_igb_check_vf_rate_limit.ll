; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_check_vf_rate_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_check_vf_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@e1000_82576 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Link speed has been changed. VF Transmit rate is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_check_vf_rate_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_check_vf_rate_limit(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_82576, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  br label %72

19:                                               ; preds = %10
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @igb_link_mbps(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %29, %19
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %44
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 3
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @igb_set_vf_rate_limit(%struct.TYPE_8__* %57, i32 %58, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %38

72:                                               ; preds = %18, %38
  ret void
}

declare dso_local i32 @igb_link_mbps(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @igb_set_vf_rate_limit(%struct.TYPE_8__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
