; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_kcs_sm.c_init_kcs_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_kcs_sm.c_init_kcs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i32, i64, i64, i64, i64, i64, i64, %struct.si_sm_io*, i32 }
%struct.si_sm_io = type { i32 }

@KCS_IDLE = common dso_local global i32 0, align 4
@IBF_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@OBF_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, %struct.si_sm_io*)* @init_kcs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_kcs_data(%struct.si_sm_data* %0, %struct.si_sm_io* %1) #0 {
  %3 = alloca %struct.si_sm_data*, align 8
  %4 = alloca %struct.si_sm_io*, align 8
  store %struct.si_sm_data* %0, %struct.si_sm_data** %3, align 8
  store %struct.si_sm_io* %1, %struct.si_sm_io** %4, align 8
  %5 = load i32, i32* @KCS_IDLE, align 4
  %6 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %7 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %6, i32 0, i32 9
  store i32 %5, i32* %7, align 8
  %8 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %9 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %10 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %9, i32 0, i32 8
  store %struct.si_sm_io* %8, %struct.si_sm_io** %10, align 8
  %11 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %12 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %14 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %16 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %18 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %20 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %22 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @IBF_RETRY_TIMEOUT, align 4
  %24 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %25 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @OBF_RETRY_TIMEOUT, align 4
  %27 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %28 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret i32 2
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
