; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_selftest.c_efx_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_selftest.c_efx_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, %struct.efx_link_state }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.efx_link_state = type { i32 }
%struct.efx_channel = type { i64 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_wait_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_wait_for_link(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_link_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_channel*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  store %struct.efx_link_state* %10, %struct.efx_link_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %86, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 40
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = load i32, i32* @HZ, align 4
  %16 = sdiv i32 %15, 10
  %17 = call i32 @schedule_timeout_uninterruptible(i32 %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to i32 (%struct.efx_nic*)**
  %23 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %22, align 8
  %24 = icmp ne i32 (%struct.efx_nic*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.efx_nic*)**
  %34 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %33, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = call i32 %34(%struct.efx_nic* %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %51

40:                                               ; preds = %14
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = call %struct.efx_channel* @efx_get_channel(%struct.efx_nic* %41, i32 0)
  store %struct.efx_channel* %42, %struct.efx_channel** %8, align 8
  %43 = load %struct.efx_channel*, %struct.efx_channel** %8, align 8
  %44 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.efx_channel*, %struct.efx_channel** %8, align 8
  %49 = call i32 @efx_process_channel_now(%struct.efx_channel* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.efx_link_state*, %struct.efx_link_state** %4, align 8
  %56 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.efx_nic*)**
  %66 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %65, align 8
  %67 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %68 = call i32 %66(%struct.efx_nic* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %60, %51
  %73 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %92

83:                                               ; preds = %78
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %11

89:                                               ; preds = %11
  %90 = load i32, i32* @ETIMEDOUT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.efx_channel* @efx_get_channel(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_process_channel_now(%struct.efx_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
