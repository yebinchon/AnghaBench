; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_status_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_status_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (%struct.ipw2100_priv*, i32)* }
%struct.ipw2100_priv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPW_STATE_SCANNING = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Scan detected while associated, with no scan request.  Restarting firmware.\0A\00", align 1
@status_handlers = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Status change: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown status received: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @isr_status_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_status_change(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IPW_STATE_SCANNING, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STATUS_SCANNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %26 = call i32 @schedule_reset(%struct.ipw2100_priv* %25)
  br label %27

27:                                               ; preds = %23, %16, %9, %2
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_handlers, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %79

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_handlers, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_handlers, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IPW_DEBUG_NOTIF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_handlers, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32 (%struct.ipw2100_priv*, i32)*, i32 (%struct.ipw2100_priv*, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.ipw2100_priv*, i32)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %45
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @status_handlers, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32 (%struct.ipw2100_priv*, i32)*, i32 (%struct.ipw2100_priv*, i32)** %65, align 8
  %67 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 %66(%struct.ipw2100_priv* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %45
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %82

75:                                               ; preds = %36
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %28

79:                                               ; preds = %28
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @IPW_DEBUG_NOTIF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %70
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @schedule_reset(%struct.ipw2100_priv*) #1

declare dso_local i32 @IPW_DEBUG_NOTIF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
