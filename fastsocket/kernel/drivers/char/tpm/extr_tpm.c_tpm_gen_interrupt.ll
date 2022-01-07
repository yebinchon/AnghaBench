; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_gen_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_gen_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_cmd_t = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@tpm_getcap_header = common dso_local global i32 0, align 4
@TPM_CAP_PROP = common dso_local global i32 0, align 4
@TPM_CAP_PROP_TIS_TIMEOUT = common dso_local global i32 0, align 4
@TPM_INTERNAL_RESULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"attempting to determine the timeouts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_gen_interrupt(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_cmd_t, align 4
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %5 = load i32, i32* @tpm_getcap_header, align 4
  %6 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @TPM_CAP_PROP, align 4
  %9 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = call i32 @cpu_to_be32(i32 4)
  %13 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @TPM_CAP_PROP_TIS_TIMEOUT, align 4
  %17 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %21 = load i32, i32* @TPM_INTERNAL_RESULT_SIZE, align 4
  %22 = call i32 @transmit_cmd(%struct.tpm_chip* %20, %struct.tpm_cmd_t* %3, i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @transmit_cmd(%struct.tpm_chip*, %struct.tpm_cmd_t*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
