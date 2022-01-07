; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Aborting scan during shutdown.\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Disassociating during shutdown.\0A\00", align 1
@STATUS_DISASSOCIATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Still associated or scanning...\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Took %dms to de-init\0A\00", align 1
@STATUS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_deinit(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @STATUS_SCANNING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = call i32 @ipw_abort_scan(%struct.ipw_priv* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = call i32 @ipw_disassociate(%struct.ipw_priv* %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = call i32 @ipw_led_shutdown(%struct.ipw_priv* %26)
  store i32 1000, i32* %3, align 4
  br label %28

28:                                               ; preds = %46, %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @STATUS_DISASSOCIATING, align 4
  %36 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STATUS_SCANNING, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %34, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %31, %28
  %43 = phi i1 [ false, %28 ], [ %41, %31 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = call i32 @udelay(i32 10)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %28

49:                                               ; preds = %42
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %51 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STATUS_DISASSOCIATING, align 4
  %54 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @STATUS_SCANNING, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %66

62:                                               ; preds = %49
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 1000, %63
  %65 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %60
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %68 = call i32 @ipw_send_card_disable(%struct.ipw_priv* %67, i32 0)
  %69 = load i32, i32* @STATUS_INIT, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %72 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @ipw_abort_scan(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_shutdown(%struct.ipw_priv*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ipw_send_card_disable(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
