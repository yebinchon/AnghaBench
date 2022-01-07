; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_handle_dma_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_handle_dma_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rsxx_dma = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Handling DMA error(cmd x%02x, laddr x%08x st:x%02x)\0A\00", align 1
@HW_STATUS_CRC = common dso_local global i32 0, align 4
@HW_STATUS_HARD_ERR = common dso_local global i32 0, align 4
@HW_STATUS_SOFT_ERR = common dso_local global i32 0, align 4
@DMA_HW_FAULT = common dso_local global i32 0, align 4
@HW_STATUS_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unknown command in DMA!(cmd: x%02x laddr x%08x st: x%02x\0A\00", align 1
@DMA_SW_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i32)* @rsxx_handle_dma_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_handle_dma_error(%struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_dma_ctrl*, align 8
  %5 = alloca %struct.rsxx_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %4, align 8
  store %struct.rsxx_dma* %1, %struct.rsxx_dma** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @CARD_TO_DEV(%struct.TYPE_4__* %11)
  %13 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %14 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %17 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HW_STATUS_CRC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HW_STATUS_HARD_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @HW_STATUS_SOFT_ERR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %55 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %140 [
    i32 130, label %57
    i32 129, label %105
    i32 128, label %122
    i32 131, label %131
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @HW_STATUS_CRC, align 4
  %60 = load i32, i32* @HW_STATUS_HARD_ERR, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %66 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %73 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %72, i32 0, i32 0
  store i32 129, i32* %73, align 4
  store i32 1, i32* %8, align 4
  %74 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %75 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %88

79:                                               ; preds = %64
  %80 = load i32, i32* @DMA_HW_FAULT, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %84 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %79, %71
  br label %104

89:                                               ; preds = %57
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @HW_STATUS_FAULT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @DMA_HW_FAULT, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %99 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %94, %89
  br label %104

104:                                              ; preds = %103, %88
  br label %156

105:                                              ; preds = %53
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @HW_STATUS_CRC, align 4
  %108 = load i32, i32* @HW_STATUS_HARD_ERR, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load i32, i32* @DMA_HW_FAULT, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %117 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %112, %105
  br label %156

122:                                              ; preds = %53
  %123 = load i32, i32* @DMA_HW_FAULT, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %127 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %156

131:                                              ; preds = %53
  %132 = load i32, i32* @DMA_HW_FAULT, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %136 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %156

140:                                              ; preds = %53
  %141 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %142 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = call i32 @CARD_TO_DEV(%struct.TYPE_4__* %143)
  %145 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %146 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %149 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i32 %151)
  %153 = load i32, i32* @DMA_SW_ERR, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %140, %131, %122, %121, %104
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %161 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %162 = call i32 @rsxx_requeue_dma(%struct.rsxx_dma_ctrl* %160, %struct.rsxx_dma* %161)
  br label %168

163:                                              ; preds = %156
  %164 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %165 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl* %164, %struct.rsxx_dma* %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %159
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rsxx_requeue_dma(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*) #1

declare dso_local i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
