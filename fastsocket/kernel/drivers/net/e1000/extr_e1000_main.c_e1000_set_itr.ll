; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_set_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64 }

@e1000_82540 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_set_itr(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 9
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_82540, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPEED_1000, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store i32 4000, i32* %5, align 4
  br label %100

30:                                               ; preds = %20
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @e1000_update_itr(%struct.e1000_adapter* %31, i64 %34, i32 %37, i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %30
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 128
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 2
  store i64 129, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49, %30
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @e1000_update_itr(%struct.e1000_adapter* %58, i64 %61, i32 %64, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %84

76:                                               ; preds = %57
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 128
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 4
  store i64 129, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %76, %57
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @max(i32 %88, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  switch i32 %94, label %98 [
    i32 128, label %95
    i32 129, label %96
    i32 130, label %97
  ]

95:                                               ; preds = %84
  store i32 70000, i32* %5, align 4
  br label %99

96:                                               ; preds = %84
  store i32 20000, i32* %5, align 4
  br label %99

97:                                               ; preds = %84
  store i32 4000, i32* %5, align 4
  br label %99

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %97, %96, %95
  br label %100

100:                                              ; preds = %99, %29
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = ashr i32 %116, 2
  %118 = add nsw i32 %115, %117
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @min(i32 %118, i32 %119)
  br label %123

121:                                              ; preds = %106
  %122 = load i32, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %112
  %124 = phi i32 [ %120, %112 ], [ %122, %121 ]
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @ITR, align 4
  %129 = load i32, i32* %5, align 4
  %130 = mul nsw i32 %129, 256
  %131 = sdiv i32 1000000000, %130
  %132 = call i32 @ew32(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %19, %123, %100
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @e1000_update_itr(%struct.e1000_adapter*, i64, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
