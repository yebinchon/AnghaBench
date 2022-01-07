; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_open_reject_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_open_reject_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32, %struct.sas_task*, %struct.pm8001_device* }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, %struct.task_status_struct }
%struct.task_status_struct = type { i32, i32, i32 }
%struct.pm8001_device = type { i64, i32 }

@PM8001_MAX_CCB = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@PM8001_MAX_DEVICES = common dso_local global i64 0, align 8
@SAS_TASK_COMPLETE = common dso_local global i32 0, align 4
@SAS_OPEN_REJECT = common dso_local global i32 0, align 4
@SAS_OREJ_RSVD_RETRY = common dso_local global i32 0, align 4
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_open_reject_retry(%struct.pm8001_hba_info* %0, %struct.sas_task* %1, %struct.pm8001_device* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sas_task*, align 8
  %10 = alloca %struct.task_status_struct*, align 8
  %11 = alloca %struct.pm8001_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pm8001_ccb_info*, align 8
  %15 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store %struct.pm8001_device* %2, %struct.pm8001_device** %6, align 8
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %17 = icmp eq %struct.pm8001_hba_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %194

19:                                               ; preds = %3
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %186, %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PM8001_MAX_CCB, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %189

28:                                               ; preds = %24
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 2
  %31 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %31, i64 %33
  store %struct.pm8001_ccb_info* %34, %struct.pm8001_ccb_info** %14, align 8
  %35 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %14, align 8
  %36 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %35, i32 0, i32 2
  %37 = load %struct.pm8001_device*, %struct.pm8001_device** %36, align 8
  store %struct.pm8001_device* %37, %struct.pm8001_device** %11, align 8
  %38 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %39 = icmp ne %struct.pm8001_device* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %42 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %28
  br label %186

47:                                               ; preds = %40
  %48 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %49 = icmp ne %struct.pm8001_device* %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %52 = ptrtoint %struct.pm8001_device* %51 to i64
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 1
  %55 = ptrtoint i32* %54 to i64
  %56 = sub i64 %52, %55
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = urem i64 %57, 16
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %15, align 8
  %62 = udiv i64 %61, 16
  %63 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %50
  br label %186

66:                                               ; preds = %60
  br label %73

67:                                               ; preds = %47
  %68 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %69 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %70 = icmp ne %struct.pm8001_device* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %186

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %66
  %74 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %14, align 8
  %75 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %73
  br label %186

83:                                               ; preds = %79
  %84 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %14, align 8
  %85 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %84, i32 0, i32 1
  %86 = load %struct.sas_task*, %struct.sas_task** %85, align 8
  store %struct.sas_task* %86, %struct.sas_task** %9, align 8
  %87 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %88 = icmp ne %struct.sas_task* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %91 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %90, i32 0, i32 1
  %92 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %91, align 8
  %93 = icmp ne i32 (%struct.sas_task*)* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %83
  br label %186

95:                                               ; preds = %89
  %96 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %97 = icmp ne %struct.sas_task* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %100 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %101 = icmp ne %struct.sas_task* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %186

103:                                              ; preds = %98, %95
  %104 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %105 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %104, i32 0, i32 3
  store %struct.task_status_struct* %105, %struct.task_status_struct** %10, align 8
  %106 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %107 = load %struct.task_status_struct*, %struct.task_status_struct** %10, align 8
  %108 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @SAS_OPEN_REJECT, align 4
  %110 = load %struct.task_status_struct*, %struct.task_status_struct** %10, align 8
  %111 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %113 = load %struct.task_status_struct*, %struct.task_status_struct** %10, align 8
  %114 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %116 = icmp ne %struct.pm8001_device* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %119 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %103
  %123 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %124 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %123, i32 0, i32 2
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %130 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %136 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %140 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %141 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %145 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %148 = and i32 %146, %147
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %122
  %152 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %153 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %152, i32 0, i32 2
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %157 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %158 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %14, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %156, %struct.sas_task* %157, %struct.pm8001_ccb_info* %158, i32 %159)
  br label %185

161:                                              ; preds = %122
  %162 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %163 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %162, i32 0, i32 2
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %167 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %168 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %14, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %166, %struct.sas_task* %167, %struct.pm8001_ccb_info* %168, i32 %169)
  %171 = call i32 (...) @mb()
  %172 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %173 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %172, i32 0, i32 0
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %177 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %176, i32 0, i32 1
  %178 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %177, align 8
  %179 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %180 = call i32 %178(%struct.sas_task* %179)
  %181 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %182 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %181, i32 0, i32 0
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  br label %185

185:                                              ; preds = %161, %151
  br label %186

186:                                              ; preds = %185, %102, %94, %82, %71, %65, %46
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %24

189:                                              ; preds = %24
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %191 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %190, i32 0, i32 0
  %192 = load i64, i64* %8, align 8
  %193 = call i32 @spin_unlock_irqrestore(i32* %191, i64 %192)
  br label %194

194:                                              ; preds = %189, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
