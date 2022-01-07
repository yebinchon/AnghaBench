; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_max_edge_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_max_edge_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ar9170_calctl_edges = type { i32, i32 }

@AR5416_MAX_RATE_POWER = common dso_local global i32 0, align 4
@AR5416_NUM_BAND_EDGES = common dso_local global i32 0, align 4
@AR9170_CALCTL_EDGE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32, %struct.ar9170_calctl_edges*)* @carl9170_get_max_edge_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_get_max_edge_power(%struct.ar9170* %0, i32 %1, %struct.ar9170_calctl_edges* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170_calctl_edges*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ar9170_calctl_edges* %2, %struct.ar9170_calctl_edges** %6, align 8
  %10 = load i32, i32* @AR5416_MAX_RATE_POWER, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 3000
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 2300
  store i32 %15, i32* %9, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 4800
  %19 = sdiv i32 %18, 5
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16, %13
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %99, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AR5416_NUM_BAND_EDGES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %26, i64 %28
  %30 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %102

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %36, i64 %38
  %40 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %44, i64 %46
  %48 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %8, align 4
  br label %102

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %58, i64 %60
  %62 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %67, i64 %70
  %72 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %66, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %65
  %76 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %76, i64 %79
  %81 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %75
  %87 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %87, i64 %90
  %92 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %86, %75, %65
  br label %102

98:                                               ; preds = %56, %53
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %21

102:                                              ; preds = %97, %43, %33, %21
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @AR5416_NUM_BAND_EDGES, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %108, i64 %111
  %113 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %107, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %106
  %117 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %117, i64 %120
  %122 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %128, i64 %131
  %133 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %127, %116, %106
  br label %139

139:                                              ; preds = %138, %102
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
