; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_cmd = type { i64, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"getctrl\00", align 1
@LCS_INITIATOR_LGW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Stoplan for %s initiated by LGW.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"noLGWcmd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*, %struct.lcs_cmd*)* @lcs_get_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_get_control(%struct.lcs_card* %0, %struct.lcs_cmd* %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca %struct.lcs_cmd*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store %struct.lcs_cmd* %1, %struct.lcs_cmd** %4, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 5, i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LCS_INITIATOR_LGW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 129, label %16
    i32 130, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %12, %12
  %17 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %18 = call i32 @lcs_schedule_recovery(%struct.lcs_card* %17)
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %27 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @netif_carrier_off(%struct.TYPE_2__* %33)
  br label %35

35:                                               ; preds = %30, %19
  br label %39

36:                                               ; preds = %12
  %37 = load i32, i32* @trace, align 4
  %38 = call i32 @LCS_DBF_TEXT(i32 5, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %35, %16
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %42 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %43 = call i32 @lcs_notify_lancmd_waiters(%struct.lcs_card* %41, %struct.lcs_cmd* %42)
  br label %44

44:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @lcs_schedule_recovery(%struct.lcs_card*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_2__*) #1

declare dso_local i32 @lcs_notify_lancmd_waiters(%struct.lcs_card*, %struct.lcs_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
