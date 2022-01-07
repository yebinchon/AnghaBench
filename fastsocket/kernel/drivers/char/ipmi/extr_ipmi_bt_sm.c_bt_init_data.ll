; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_init_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i32, i8*, i8*, i64, %struct.si_sm_io* }
%struct.si_sm_io = type { i32 }

@BT_STATE_IDLE = common dso_local global i8* null, align 8
@BT_NORMAL_TIMEOUT = common dso_local global i32 0, align 4
@BT_NORMAL_RETRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, %struct.si_sm_io*)* @bt_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_init_data(%struct.si_sm_data* %0, %struct.si_sm_io* %1) #0 {
  %3 = alloca %struct.si_sm_data*, align 8
  %4 = alloca %struct.si_sm_io*, align 8
  store %struct.si_sm_data* %0, %struct.si_sm_data** %3, align 8
  store %struct.si_sm_io* %1, %struct.si_sm_io** %4, align 8
  %5 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %6 = call i32 @memset(%struct.si_sm_data* %5, i32 0, i32 40)
  %7 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %8 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %7, i32 0, i32 5
  %9 = load %struct.si_sm_io*, %struct.si_sm_io** %8, align 8
  %10 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %11 = icmp ne %struct.si_sm_io* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %14 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %15 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %14, i32 0, i32 5
  store %struct.si_sm_io* %13, %struct.si_sm_io** %15, align 8
  %16 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %17 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i8*, i8** @BT_STATE_IDLE, align 8
  %20 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %21 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @BT_STATE_IDLE, align 8
  %23 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %24 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @BT_NORMAL_TIMEOUT, align 4
  %26 = mul nsw i32 %25, 1000000
  %27 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %28 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @BT_NORMAL_RETRY_LIMIT, align 4
  %30 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %31 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret i32 3
}

declare dso_local i32 @memset(%struct.si_sm_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
