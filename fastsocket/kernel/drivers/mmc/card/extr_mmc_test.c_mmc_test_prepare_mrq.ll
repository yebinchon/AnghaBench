; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_prepare_mrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_prepare_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.scatterlist*, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_WRITE_BLOCK = common dso_local global i32 0, align 4
@MMC_READ_SINGLE_BLOCK = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32)* @mmc_test_prepare_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_prepare_mrq(%struct.mmc_test_card* %0, %struct.mmc_request* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mmc_test_card*, align 8
  %10 = alloca %struct.mmc_request*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %9, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %8
  %20 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24, %19, %8
  %36 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %8 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @MMC_WRITE_MULTIPLE_BLOCK, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @MMC_READ_MULTIPLE_BLOCK, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 4
  br label %67

54:                                               ; preds = %35
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @MMC_WRITE_BLOCK, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @MMC_READ_SINGLE_BLOCK, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %64 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %48
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %70 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @MMC_RSP_R1, align 4
  %74 = load i32, i32* @MMC_CMD_ADTC, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %77 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %84 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %83, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %84, align 8
  br label %102

85:                                               ; preds = %67
  %86 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %87 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %88 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 8
  %91 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %92 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @MMC_RSP_R1B, align 4
  %96 = load i32, i32* @MMC_CMD_AC, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %99 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  br label %102

102:                                              ; preds = %85, %82
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %105 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %110 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @MMC_DATA_WRITE, align 4
  br label %119

117:                                              ; preds = %102
  %118 = load i32, i32* @MMC_DATA_READ, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %122 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  store i32 %120, i32* %124, align 8
  %125 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %126 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %127 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store %struct.scatterlist* %125, %struct.scatterlist** %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %132 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 8
  %135 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %136 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %139 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @mmc_set_data_timeout(%struct.TYPE_6__* %137, i32 %140)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
