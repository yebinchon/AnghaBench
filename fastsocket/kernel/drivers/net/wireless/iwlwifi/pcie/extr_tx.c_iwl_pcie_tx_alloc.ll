; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Scheduler BC Table allocation failed\0A\00", align 1
@IWL_KW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Keep Warm allocation failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Not enough memory for txq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TFD_CMD_SLOTS = common dso_local global i32 0, align 4
@TFD_TX_CMD_SLOTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Tx %d queue alloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_tx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_tx_alloc(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %7, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @WARN_ON(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %115

29:                                               ; preds = %1
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 3
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %30, i32* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %39 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %115

40:                                               ; preds = %29
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 2
  %44 = load i32, i32* @IWL_KW_SIZE, align 4
  %45 = call i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %41, i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %115

51:                                               ; preds = %40
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32* @kcalloc(i32 %58, i32 4, i32 %59)
  %61 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %51
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %69 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %4, align 4
  br label %115

71:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %111, %71
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %73, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @TFD_CMD_SLOTS, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @TFD_TX_CMD_SLOTS, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %6, align 4
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %95 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @iwl_pcie_txq_alloc(%struct.iwl_trans* %94, i32* %100, i32 %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %115

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %72

114:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  br label %119

115:                                              ; preds = %106, %67, %48, %37, %26
  %116 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %117 = call i32 @iwl_pcie_tx_free(%struct.iwl_trans* %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32*) #1

declare dso_local i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_alloc(%struct.iwl_trans*, i32*, i32, i32) #1

declare dso_local i32 @iwl_pcie_tx_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
