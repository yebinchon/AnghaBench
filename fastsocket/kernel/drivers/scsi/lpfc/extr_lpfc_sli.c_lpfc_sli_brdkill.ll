; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.lpfc_sli }
%struct.TYPE_6__ = type { i32, i32 }
%struct.lpfc_sli = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"0329 Kill HBA Data: x%x x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@HC_ERINT_ENA = common dso_local global i32 0, align 4
@LS_IGNORE_ERATT = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"2752 KILL_BOARD command failed retval %d\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_brdkill(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 7
  store %struct.lpfc_sli* %11, %struct.lpfc_sli** %4, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @LOG_SLI, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @mempool_alloc(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %210

33:                                               ; preds = %1
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @lpfc_readl(i32 %39, i32* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mempool_free(%struct.TYPE_7__* %46, i32 %49)
  store i32 1, i32* %2, align 4
  br label %210

51:                                               ; preds = %33
  %52 = load i32, i32* @HC_ERINT_ENA, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @writel(i32 %56, i32 %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @readl(i32 %63)
  %65 = load i32, i32* @LS_IGNORE_ERATT, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = call i32 @lpfc_kill_board(%struct.lpfc_hba* %73, %struct.TYPE_7__* %74)
  %76 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = load i32, i32* @MBX_NOWAIT, align 4
  %82 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %79, %struct.TYPE_7__* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MBX_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %51
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MBX_BUSY, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mempool_free(%struct.TYPE_7__* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %98 = load i32, i32* @KERN_ERR, align 4
  %99 = load i32, i32* @LOG_SLI, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 1
  %104 = call i32 @spin_lock_irq(i32* %103)
  %105 = load i32, i32* @LS_IGNORE_ERATT, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock_irq(i32* %112)
  store i32 1, i32* %2, align 4
  br label %210

114:                                              ; preds = %51
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 1
  %117 = call i32 @spin_lock_irq(i32* %116)
  %118 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock_irq(i32* %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mempool_free(%struct.TYPE_7__* %127, i32 %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @lpfc_readl(i32 %134, i32* %7)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %114
  store i32 1, i32* %2, align 4
  br label %210

138:                                              ; preds = %114
  br label %139

139:                                              ; preds = %159, %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  %142 = icmp slt i32 %140, 30
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @HA_ERATT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %143, %139
  %150 = phi i1 [ false, %139 ], [ %148, %143 ]
  br i1 %150, label %151, label %160

151:                                              ; preds = %149
  %152 = call i32 @mdelay(i32 100)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @lpfc_readl(i32 %155, i32* %7)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i32 1, i32* %2, align 4
  br label %210

159:                                              ; preds = %151
  br label %139

160:                                              ; preds = %149
  %161 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %162 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %161, i32 0, i32 2
  %163 = call i32 @del_timer_sync(i32* %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @HA_ERATT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = load i32, i32* @HA_ERATT, align 4
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @writel(i32 %169, i32 %172)
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %175 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %174, i32 0, i32 3
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %168, %160
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 1
  %181 = call i32 @spin_lock_irq(i32* %180)
  %182 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %185 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %189 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %188, i32 0, i32 0
  store i32* null, i32** %189, align 8
  %190 = load i32, i32* @LS_IGNORE_ERATT, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 1
  %198 = call i32 @spin_unlock_irq(i32* %197)
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = call i32 @lpfc_hba_down_post(%struct.lpfc_hba* %199)
  %201 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @HA_ERATT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 0, i32 1
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %178, %158, %137, %96, %42, %32
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_kill_board(%struct.lpfc_hba*, %struct.TYPE_7__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_hba_down_post(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
