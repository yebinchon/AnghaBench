; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_kcs_sm.c_check_obf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_kcs_sm.c_check_obf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"OBF not ready in time\00", align 1
@OBF_RETRY_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, i8, i64)* @check_obf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_obf(%struct.si_sm_data* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si_sm_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.si_sm_data* %0, %struct.si_sm_data** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = call i32 @GET_STATUS_OBF(i8 zeroext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %14 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %18 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %23 = call i32 @start_error_recovery(%struct.si_sm_data* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %29

24:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i64, i64* @OBF_RETRY_TIMEOUT, align 8
  %27 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %28 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %24, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @GET_STATUS_OBF(i8 zeroext) #1

declare dso_local i32 @start_error_recovery(%struct.si_sm_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
