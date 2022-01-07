; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32, i32, i32 }
%struct.mmc_card = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_set_data_timeout(%struct.mmc_data* %0, %struct.mmc_card* %1) #0 {
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_data* %0, %struct.mmc_data** %3, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %4, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = call i64 @mmc_card_sdio(%struct.mmc_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 0
  store i32 1000000000, i32* %13, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %18 = call i64 @mmc_card_sd(%struct.mmc_card* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 100, i32 10
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_DATA_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %39, %40
  %42 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %53 = call i64 @mmc_card_sd(%struct.mmc_card* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %35
  %56 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  store i32 %59, i32* %6, align 4
  %60 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %62, 1000
  %64 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 1000
  %71 = udiv i32 %63, %70
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MMC_DATA_WRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %55
  store i32 300000, i32* %7, align 4
  br label %82

81:                                               ; preds = %55
  store i32 100000, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %88 = call i64 @mmc_card_blockaddr(%struct.mmc_card* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %7, align 4
  %92 = mul i32 %91, 1000
  %93 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %86
  br label %98

98:                                               ; preds = %97, %35
  %99 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i64 @mmc_host_is_spi(%struct.TYPE_6__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %106 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MMC_DATA_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %113 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1000000000
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %117, i32 0, i32 0
  store i32 1000000000, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %111
  br label %129

120:                                              ; preds = %104
  %121 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %122 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 100000000
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %127 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %126, i32 0, i32 0
  store i32 100000000, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %119
  br label %130

130:                                              ; preds = %11, %129, %98
  ret void
}

declare dso_local i64 @mmc_card_sdio(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_blockaddr(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
