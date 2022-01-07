; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_alloc_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_alloc_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_3__*, %struct.tg3_napi*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tg3_napi = type { i32*, %struct.tg3_hw_status*, i32 }
%struct.tg3_hw_status = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@TG3_HW_STATUS_SIZE = common dso_local global i32 0, align 4
@ENABLE_RSS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_alloc_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_alloc_consistent(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  %6 = alloca %struct.tg3_hw_status*, align 8
  %7 = alloca i32*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %8 = load %struct.tg3*, %struct.tg3** %3, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @__GFP_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @dma_alloc_coherent(i32* %11, i32 4, i32* %13, i32 %16)
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.tg3*, %struct.tg3** %3, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %109

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %96, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.tg3*, %struct.tg3** %3, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %26
  %33 = load %struct.tg3*, %struct.tg3** %3, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 2
  %35 = load %struct.tg3_napi*, %struct.tg3_napi** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %35, i64 %37
  store %struct.tg3_napi* %38, %struct.tg3_napi** %5, align 8
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* @TG3_HW_STATUS_SIZE, align 4
  %44 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %45 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %44, i32 0, i32 2
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* @__GFP_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @dma_alloc_coherent(i32* %42, i32 %43, i32* %45, i32 %48)
  %50 = bitcast i8* %49 to %struct.tg3_hw_status*
  %51 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %52 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %51, i32 0, i32 1
  store %struct.tg3_hw_status* %50, %struct.tg3_hw_status** %52, align 8
  %53 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %54 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %53, i32 0, i32 1
  %55 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %54, align 8
  %56 = icmp ne %struct.tg3_hw_status* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %32
  br label %109

58:                                               ; preds = %32
  %59 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %60 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %59, i32 0, i32 1
  %61 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %60, align 8
  store %struct.tg3_hw_status* %61, %struct.tg3_hw_status** %6, align 8
  %62 = load %struct.tg3*, %struct.tg3** %3, align 8
  %63 = load i32, i32* @ENABLE_RSS, align 4
  %64 = call i64 @tg3_flag(%struct.tg3* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  store i32* null, i32** %7, align 8
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %83 [
    i32 1, label %68
    i32 2, label %74
    i32 3, label %77
    i32 4, label %80
  ]

68:                                               ; preds = %66
  %69 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %70 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* %73, i32** %7, align 8
  br label %83

74:                                               ; preds = %66
  %75 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %76 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %75, i32 0, i32 3
  store i32* %76, i32** %7, align 8
  br label %83

77:                                               ; preds = %66
  %78 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %79 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %78, i32 0, i32 2
  store i32* %79, i32** %7, align 8
  br label %83

80:                                               ; preds = %66
  %81 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %82 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %81, i32 0, i32 1
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %66, %80, %77, %74, %68
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %86 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  br label %95

87:                                               ; preds = %58
  %88 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %89 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %94 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %87, %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %26

99:                                               ; preds = %26
  %100 = load %struct.tg3*, %struct.tg3** %3, align 8
  %101 = call i64 @tg3_mem_tx_acquire(%struct.tg3* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.tg3*, %struct.tg3** %3, align 8
  %105 = call i64 @tg3_mem_rx_acquire(%struct.tg3* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %99
  br label %109

108:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %114

109:                                              ; preds = %107, %57, %24
  %110 = load %struct.tg3*, %struct.tg3** %3, align 8
  %111 = call i32 @tg3_free_consistent(%struct.tg3* %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_mem_tx_acquire(%struct.tg3*) #1

declare dso_local i64 @tg3_mem_rx_acquire(%struct.tg3*) #1

declare dso_local i32 @tg3_free_consistent(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
