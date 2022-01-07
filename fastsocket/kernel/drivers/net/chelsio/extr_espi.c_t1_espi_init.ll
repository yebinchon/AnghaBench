; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peespi = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@A_ESPI_TRAIN = common dso_local global i64 0, align 8
@A_ESPI_MISC_CONTROL = common dso_local global i64 0, align 8
@A_ESPI_MAXBURST1_MAXBURST2 = common dso_local global i64 0, align 8
@CHBT_MAC_PM3393 = common dso_local global i32 0, align 4
@CHBT_MAC_VSC7321 = common dso_local global i32 0, align 4
@CHBT_MAC_IXF1010 = common dso_local global i32 0, align 4
@F_INTEL1010MODE = common dso_local global i32 0, align 4
@F_RXSTATUSENABLE = common dso_local global i32 0, align 4
@A_ESPI_FIFO_STATUS_ENABLE = common dso_local global i64 0, align 8
@MON_MASK = common dso_local global i32 0, align 4
@F_MONITORED_DIRECTION = common dso_local global i32 0, align 4
@F_MONITORED_INTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_espi_init(%struct.peespi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.peespi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.peespi* %0, %struct.peespi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.peespi*, %struct.peespi** %5, align 8
  %11 = getelementptr inbounds %struct.peespi, %struct.peespi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @A_ESPI_TRAIN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = call i64 @is_T2(%struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = call i32 @V_OUT_OF_SYNC_COUNT(i32 4)
  %24 = call i32 @V_DIP2_PARITY_ERR_THRES(i32 3)
  %25 = or i32 %23, %24
  %26 = call i32 @V_DIP4_THRES(i32 1)
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2097216, i32 16777344
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @A_ESPI_MAXBURST1_MAXBURST2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @A_ESPI_MAXBURST1_MAXBURST2, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 8388864, i64 %49)
  br label %51

51:                                               ; preds = %44, %22
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @CHBT_MAC_PM3393, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = call i32 @espi_setup_for_pm3393(%struct.TYPE_9__* %56)
  br label %77

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @CHBT_MAC_VSC7321, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = call i32 @espi_setup_for_vsc7321(%struct.TYPE_9__* %63)
  br label %76

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CHBT_MAC_IXF1010, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @F_INTEL1010MODE, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @espi_setup_for_ixf1010(%struct.TYPE_9__* %71, i32 %72)
  br label %75

74:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %137

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @F_RXSTATUSENABLE, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @A_ESPI_FIFO_STATUS_ENABLE, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = call i64 @is_T2(%struct.TYPE_9__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %136

90:                                               ; preds = %77
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = call i32 @tricn_init(%struct.TYPE_9__* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  %99 = load %struct.peespi*, %struct.peespi** %5, align 8
  %100 = getelementptr inbounds %struct.peespi, %struct.peespi* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @MON_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.peespi*, %struct.peespi** %5, align 8
  %104 = getelementptr inbounds %struct.peespi, %struct.peespi* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @F_MONITORED_DIRECTION, align 4
  %108 = load %struct.peespi*, %struct.peespi** %5, align 8
  %109 = getelementptr inbounds %struct.peespi, %struct.peespi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %90
  %118 = load i32, i32* @F_MONITORED_INTERFACE, align 4
  %119 = load %struct.peespi*, %struct.peespi** %5, align 8
  %120 = getelementptr inbounds %struct.peespi, %struct.peespi* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %90
  %124 = load %struct.peespi*, %struct.peespi** %5, align 8
  %125 = getelementptr inbounds %struct.peespi, %struct.peespi* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  %133 = load %struct.peespi*, %struct.peespi** %5, align 8
  %134 = getelementptr inbounds %struct.peespi, %struct.peespi* %133, i32 0, i32 1
  %135 = call i32 @spin_lock_init(i32* %134)
  br label %136

136:                                              ; preds = %123, %77
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %74
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @is_T2(%struct.TYPE_9__*) #1

declare dso_local i32 @V_OUT_OF_SYNC_COUNT(i32) #1

declare dso_local i32 @V_DIP2_PARITY_ERR_THRES(i32) #1

declare dso_local i32 @V_DIP4_THRES(i32) #1

declare dso_local i32 @espi_setup_for_pm3393(%struct.TYPE_9__*) #1

declare dso_local i32 @espi_setup_for_vsc7321(%struct.TYPE_9__*) #1

declare dso_local i32 @espi_setup_for_ixf1010(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tricn_init(%struct.TYPE_9__*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
