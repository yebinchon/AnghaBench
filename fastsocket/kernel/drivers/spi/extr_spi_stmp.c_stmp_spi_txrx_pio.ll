; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_txrx_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_txrx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp_spi = type { i64 }

@HW_SSP_CTRL0 = common dso_local global i64 0, align 8
@BM_SSP_CTRL0_XFER_COUNT = common dso_local global i32 0, align 4
@BM_SSP_CTRL0_READ = common dso_local global i32 0, align 4
@BM_SSP_CTRL0_RUN = common dso_local global i32 0, align 4
@HW_SSP_DATA = common dso_local global i64 0, align 8
@BM_SSP_CTRL0_DATA_XFER = common dso_local global i32 0, align 4
@HW_SSP_STATUS = common dso_local global i64 0, align 8
@BM_SSP_STATUS_FIFO_EMPTY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmp_spi*, i32, i8*, i32, i32, i32, i32)* @stmp_spi_txrx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp_spi_txrx_pio(%struct.stmp_spi* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.stmp_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stmp_spi* %0, %struct.stmp_spi** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %19 = call i32 @stmp_spi_enable(%struct.stmp_spi* %18)
  br label %20

20:                                               ; preds = %17, %7
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @stmp_spi_cs(i32 %21)
  %23 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %24 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HW_SSP_CTRL0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @stmp3xxx_setl(i32 %22, i64 %27)
  br label %29

29:                                               ; preds = %149, %20
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %152

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %41 = call i32 @stmp_spi_disable(%struct.stmp_spi* %40)
  br label %42

42:                                               ; preds = %39, %36, %33
  %43 = load i32, i32* @BM_SSP_CTRL0_XFER_COUNT, align 4
  %44 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %45 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HW_SSP_CTRL0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @stmp3xxx_clearl(i32 %43, i64 %48)
  %50 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %51 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HW_SSP_CTRL0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @stmp3xxx_setl(i32 1, i64 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load i32, i32* @BM_SSP_CTRL0_READ, align 4
  %60 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %61 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HW_SSP_CTRL0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @stmp3xxx_clearl(i32 %59, i64 %64)
  br label %74

66:                                               ; preds = %42
  %67 = load i32, i32* @BM_SSP_CTRL0_READ, align 4
  %68 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %69 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HW_SSP_CTRL0, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @stmp3xxx_setl(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* @BM_SSP_CTRL0_RUN, align 4
  %76 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %77 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HW_SSP_CTRL0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @stmp3xxx_setl(i32 %75, i64 %80)
  %82 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %83 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HW_SSP_CTRL0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = load i32, i32* @BM_SSP_CTRL0_RUN, align 4
  %89 = and i32 %87, %88
  %90 = call i64 @busy_wait(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %74
  br label %152

93:                                               ; preds = %74
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %100 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HW_SSP_DATA, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i8 zeroext %98, i64 %103)
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i32, i32* @BM_SSP_CTRL0_DATA_XFER, align 4
  %107 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %108 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HW_SSP_CTRL0, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @stmp3xxx_setl(i32 %106, i64 %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %105
  %116 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %117 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HW_SSP_STATUS, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readl(i64 %120)
  %122 = load i32, i32* @BM_SSP_STATUS_FIFO_EMPTY, align 4
  %123 = and i32 %121, %122
  %124 = call i64 @busy_wait(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %152

127:                                              ; preds = %115
  %128 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %129 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HW_SSP_DATA, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl(i64 %132)
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %10, align 8
  store i8 %135, i8* %136, align 1
  br label %137

137:                                              ; preds = %127, %105
  %138 = load %struct.stmp_spi*, %struct.stmp_spi** %8, align 8
  %139 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @HW_SSP_CTRL0, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readl(i64 %142)
  %144 = load i32, i32* @BM_SSP_CTRL0_RUN, align 4
  %145 = and i32 %143, %144
  %146 = call i64 @busy_wait(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %137
  br label %152

149:                                              ; preds = %137
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %10, align 8
  br label %29

152:                                              ; preds = %148, %126, %92, %29
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @ETIMEDOUT, align 4
  %158 = sub nsw i32 0, %157
  br label %159

159:                                              ; preds = %156, %155
  %160 = phi i32 [ 0, %155 ], [ %158, %156 ]
  ret i32 %160
}

declare dso_local i32 @stmp_spi_enable(%struct.stmp_spi*) #1

declare dso_local i32 @stmp3xxx_setl(i32, i64) #1

declare dso_local i32 @stmp_spi_cs(i32) #1

declare dso_local i32 @stmp_spi_disable(%struct.stmp_spi*) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i64 @busy_wait(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
