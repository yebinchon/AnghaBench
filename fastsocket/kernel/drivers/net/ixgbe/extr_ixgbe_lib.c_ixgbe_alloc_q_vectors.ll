; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32 }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_q_vectors(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter* %40, i32 %41, i32 %42, i32 0, i32 0, i32 1, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %99

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %95, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @DIV_ROUND_UP(i32 %63, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @DIV_ROUND_UP(i32 %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %62
  br label %99

84:                                               ; preds = %62
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %58

98:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %117

99:                                               ; preds = %83, %47
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %100, i32 0, i32 2
  store i32 0, i32* %101, align 4
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %110, %99
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %9, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ixgbe_free_q_vector(%struct.ixgbe_adapter* %111, i32 %112)
  br label %106

114:                                              ; preds = %106
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %98
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ixgbe_free_q_vector(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
