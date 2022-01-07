; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lpfc_queue** }
%struct.lpfc_queue = type { i32, i32, i32, i32, i32 }
%struct.lpfc_fcp_eq_hdl = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_eqe = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@lpfc_fcp_look_ahead = common dso_local global i64 0, align 8
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_QUEUE_NOARM = common dso_local global i32 0, align 4
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"0358 MSI-X interrupt with no EQE\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_hba_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_fcp_eq_hdl*, align 8
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca %struct.lpfc_eqe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.lpfc_fcp_eq_hdl*
  store %struct.lpfc_fcp_eq_hdl* %14, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %15 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %15, i32 0, i32 2
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %6, align 8
  %18 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %19 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %22 = icmp ne %struct.lpfc_hba* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %191

29:                                               ; preds = %2
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %32, align 8
  %34 = icmp ne %struct.lpfc_queue** %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %191

41:                                               ; preds = %29
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %45, i64 %47
  %49 = load %struct.lpfc_queue*, %struct.lpfc_queue** %48, align 8
  store %struct.lpfc_queue* %49, %struct.lpfc_queue** %8, align 8
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %51 = icmp ne %struct.lpfc_queue* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %3, align 4
  br label %191

58:                                               ; preds = %41
  %59 = load i64, i64* @lpfc_fcp_look_ahead, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %62, i32 0, i32 1
  %64 = call i64 @atomic_dec_and_test(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %68 = call i32 @lpfc_sli4_eq_clr_intr(%struct.lpfc_queue* %67)
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %70, i32 0, i32 1
  %72 = call i32 @atomic_inc(i32* %71)
  %73 = load i32, i32* @IRQ_NONE, align 4
  store i32 %73, i32* %3, align 4
  br label %191

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %77 = call i32 @lpfc_intr_state_check(%struct.lpfc_hba* %76)
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %82 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 2
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %96 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %97 = call i32 @lpfc_sli4_eq_flush(%struct.lpfc_hba* %95, %struct.lpfc_queue* %96)
  br label %98

98:                                               ; preds = %94, %80
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 2
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i64, i64* @lpfc_fcp_look_ahead, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %106, i32 0, i32 1
  %108 = call i32 @atomic_inc(i32* %107)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* @IRQ_NONE, align 4
  store i32 %110, i32* %3, align 4
  br label %191

111:                                              ; preds = %75
  br label %112

112:                                              ; preds = %132, %111
  %113 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %114 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %113)
  store %struct.lpfc_eqe* %114, %struct.lpfc_eqe** %9, align 8
  %115 = icmp ne %struct.lpfc_eqe* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %118 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %9, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba* %117, %struct.lpfc_eqe* %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %124 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %116
  %129 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %130 = load i32, i32* @LPFC_QUEUE_NOARM, align 4
  %131 = call i32 @lpfc_sli4_eq_release(%struct.lpfc_queue* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %116
  %133 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %134 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %112

137:                                              ; preds = %112
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %140 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %146 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %149 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %150 = call i32 @lpfc_sli4_eq_release(%struct.lpfc_queue* %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %147
  %157 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %158 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i64, i64* @lpfc_fcp_look_ahead, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %165 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %164, i32 0, i32 1
  %166 = call i32 @atomic_inc(i32* %165)
  %167 = load i32, i32* @IRQ_NONE, align 4
  store i32 %167, i32* %3, align 4
  br label %191

168:                                              ; preds = %156
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MSIX, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %176 = load i32, i32* @KERN_WARNING, align 4
  %177 = load i32, i32* @LOG_SLI, align 4
  %178 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %181

179:                                              ; preds = %168
  %180 = load i32, i32* @IRQ_NONE, align 4
  store i32 %180, i32* %3, align 4
  br label %191

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %147
  %183 = load i64, i64* @lpfc_fcp_look_ahead, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %7, align 8
  %187 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %186, i32 0, i32 1
  %188 = call i32 @atomic_inc(i32* %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %179, %163, %109, %69, %56, %39, %27
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @lpfc_sli4_eq_clr_intr(%struct.lpfc_queue*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_eq_flush(%struct.lpfc_hba*, %struct.lpfc_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba*, %struct.lpfc_eqe*, i32) #1

declare dso_local i32 @lpfc_sli4_eq_release(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
