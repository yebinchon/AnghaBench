; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_map_rings_to_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_map_rings_to_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32 }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_map_rings_to_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_map_rings_to_vectors(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NON_Q_VECTORS, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = icmp eq i32 %25, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @map_vector_to_rxq(%struct.ixgbevf_adapter* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %35

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @map_vector_to_txq(%struct.ixgbevf_adapter* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %50

64:                                               ; preds = %50
  br label %130

65:                                               ; preds = %1
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %94, %65
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @DIV_ROUND_UP(i32 %72, i32 %75)
  store i32 %76, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %90, %71
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @map_vector_to_rxq(%struct.ixgbevf_adapter* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %77

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %126, %97
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @DIV_ROUND_UP(i32 %104, i32 %107)
  store i32 %108, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %122, %103
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @map_vector_to_txq(%struct.ixgbevf_adapter* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %109

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %99

129:                                              ; preds = %99
  br label %130

130:                                              ; preds = %129, %64
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local i32 @map_vector_to_rxq(%struct.ixgbevf_adapter*, i32, i32) #1

declare dso_local i32 @map_vector_to_txq(%struct.ixgbevf_adapter*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
