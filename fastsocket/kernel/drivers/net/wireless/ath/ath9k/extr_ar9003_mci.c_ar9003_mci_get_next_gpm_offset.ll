; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_next_gpm_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_next_gpm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }

@AR_MCI_GPM_1 = common dso_local global i32 0, align 4
@AR_MCI_GPM_WRITE_PTR = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_GPM = common dso_local global i32 0, align 4
@MCI_GPM_INVALID = common dso_local global i32 0, align 4
@MCI_GPM_NOMORE = common dso_local global i32 0, align 4
@MCI_GPM_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath9k_hw_mci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ath9k_hw_mci* %15, %struct.ath9k_hw_mci** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = load i32, i32* @AR_MCI_GPM_1, align 4
  %21 = call i32 @REG_READ(%struct.ath_hw* %19, i32 %20)
  %22 = load i32, i32* @AR_MCI_GPM_WRITE_PTR, align 4
  %23 = call i32 @MS(i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %26 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %33 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %146

35:                                               ; preds = %3
  %36 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %37 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %38 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %39 = call i32 @REG_WRITE(%struct.ath_hw* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = load i32, i32* @AR_MCI_GPM_1, align 4
  %42 = call i32 @REG_READ(%struct.ath_hw* %40, i32 %41)
  %43 = load i32, i32* @AR_MCI_GPM_WRITE_PTR, align 4
  %44 = call i32 @MS(i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %50 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %68

53:                                               ; preds = %35
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %56 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 65535
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 65535
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %68
  %78 = load i32, i32* @MCI_GPM_INVALID, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @MCI_GPM_NOMORE, align 4
  store i32 %79, i32* %10, align 4
  br label %138

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %129, %80
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %84 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @MCI_GPM_MORE, align 4
  store i32 %88, i32* %10, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @MCI_GPM_NOMORE, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %93 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %97 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %91
  %102 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %103 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %107 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %110 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %115 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %101
  %117 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @ar9003_mci_is_gpm_valid(%struct.ath_hw* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %9, align 4
  br label %130

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @MCI_GPM_NOMORE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @MCI_GPM_INVALID, align 4
  store i32 %128, i32* %9, align 4
  br label %130

129:                                              ; preds = %123
  br label %81

130:                                              ; preds = %127, %121
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @MCI_GPM_INVALID, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %135, 4
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %77
  %139 = load i32*, i32** %7, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %30
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @ar9003_mci_is_gpm_valid(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
