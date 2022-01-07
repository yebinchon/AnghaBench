; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_4__*, %struct.bna_rxf }
%struct.TYPE_4__ = type { i64, i64, %struct.bnad* }
%struct.bnad = type opaque
%struct.bna_rxf = type { void (%struct.bnad.0*, %struct.bna_rx.1*)*, %struct.bnad*, %struct.TYPE_3__* }
%struct.bnad.0 = type opaque
%struct.bna_rx.1 = type opaque
%struct.TYPE_3__ = type { i64 }

@BFI_INVALID_RID = common dso_local global i64 0, align 8
@RXF_E_CONFIG = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_mode_set(%struct.bna_rx* %0, i32 %1, i32 %2, void (%struct.bnad*, %struct.bna_rx*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bna_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.bnad*, %struct.bna_rx*)*, align 8
  %10 = alloca %struct.bna_rxf*, align 8
  %11 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (%struct.bnad*, %struct.bna_rx*)* %3, void (%struct.bnad*, %struct.bna_rx*)** %9, align 8
  %12 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %13 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %12, i32 0, i32 1
  store %struct.bna_rxf* %13, %struct.bna_rxf** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @is_promisc_enable(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %4
  %19 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %20 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFI_INVALID_RID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %28 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %33 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %169

39:                                               ; preds = %26, %18
  %40 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %41 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BFI_INVALID_RID, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %169

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @is_default_enable(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %169

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @is_default_enable(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %62 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BFI_INVALID_RID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %70 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %75 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %169

81:                                               ; preds = %68, %60
  %82 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %83 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BFI_INVALID_RID, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %169

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @is_promisc_enable(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %98 = call i64 @bna_rxf_promisc_enable(%struct.bna_rxf* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %96
  br label %114

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @is_promisc_disable(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %109 = call i64 @bna_rxf_promisc_disable(%struct.bna_rxf* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %107
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @is_allmulti_enable(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %121 = call i64 @bna_rxf_allmulti_enable(%struct.bna_rxf* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %137

125:                                              ; preds = %114
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @is_allmulti_disable(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %132 = call i64 @bna_rxf_allmulti_disable(%struct.bna_rxf* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %130
  br label %136

136:                                              ; preds = %135, %125
  br label %137

137:                                              ; preds = %136, %124
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %9, align 8
  %142 = bitcast void (%struct.bnad*, %struct.bna_rx*)* %141 to void (%struct.bnad.0*, %struct.bna_rx.1*)*
  %143 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %144 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %143, i32 0, i32 0
  store void (%struct.bnad.0*, %struct.bna_rx.1*)* %142, void (%struct.bnad.0*, %struct.bna_rx.1*)** %144, align 8
  %145 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %146 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load %struct.bnad*, %struct.bnad** %148, align 8
  %150 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %151 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %150, i32 0, i32 1
  store %struct.bnad* %149, %struct.bnad** %151, align 8
  %152 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %153 = load i32, i32* @RXF_E_CONFIG, align 4
  %154 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %152, i32 %153)
  br label %167

155:                                              ; preds = %137
  %156 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %9, align 8
  %157 = icmp ne void (%struct.bnad*, %struct.bna_rx*)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %9, align 8
  %160 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %161 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load %struct.bnad*, %struct.bnad** %163, align 8
  %165 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  call void %159(%struct.bnad* %164, %struct.bna_rx* %165)
  br label %166

166:                                              ; preds = %158, %155
  br label %167

167:                                              ; preds = %166, %140
  %168 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %168, i32* %5, align 4
  br label %171

169:                                              ; preds = %89, %80, %53, %47, %38
  %170 = load i32, i32* @BNA_CB_FAIL, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @is_promisc_enable(i32, i32) #1

declare dso_local i64 @is_default_enable(i32, i32) #1

declare dso_local i64 @bna_rxf_promisc_enable(%struct.bna_rxf*) #1

declare dso_local i64 @is_promisc_disable(i32, i32) #1

declare dso_local i64 @bna_rxf_promisc_disable(%struct.bna_rxf*) #1

declare dso_local i64 @is_allmulti_enable(i32, i32) #1

declare dso_local i64 @bna_rxf_allmulti_enable(%struct.bna_rxf*) #1

declare dso_local i64 @is_allmulti_disable(i32, i32) #1

declare dso_local i64 @bna_rxf_allmulti_disable(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
