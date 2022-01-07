; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, i32, i32*, i32 }

@MCDI_EVENT_CODE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PTP out of sequence event %d\0A\00", align 1
@CONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"PTP unknown event %d\0A\00", align 1
@MAX_EVENT_FRAGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"PTP too many event fragments\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ptp_event(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %8, align 8
  store %struct.efx_ptp_data* %9, %struct.efx_ptp_data** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MCDI_EVENT_CODE, align 4
  %13 = call i32 @EFX_QWORD_FIELD(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %15 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %21 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %27 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %30 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %43 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %34, %28
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %49 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %52 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CONT, align 4
  %59 = call i32 @MCDI_EVENT_FIELD(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %75 [
    i32 128, label %63
    i32 130, label %67
    i32 129, label %71
  ]

63:                                               ; preds = %61
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %66 = call i32 @ptp_event_rx(%struct.efx_nic* %64, %struct.efx_ptp_data* %65)
  br label %83

67:                                               ; preds = %61
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %70 = call i32 @ptp_event_fault(%struct.efx_nic* %68, %struct.efx_ptp_data* %69)
  br label %83

71:                                               ; preds = %61
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %74 = call i32 @ptp_event_pps(%struct.efx_nic* %72, %struct.efx_ptp_data* %73)
  br label %83

75:                                               ; preds = %61
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = load i32, i32* @hw, align 4
  %78 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %79 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75, %71, %67, %63
  %84 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %85 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %102

86:                                               ; preds = %45
  %87 = load i64, i64* @MAX_EVENT_FRAGS, align 8
  %88 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %89 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %94 = load i32, i32* @hw, align 4
  %95 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %93, i32 %94, i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %100 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %86
  br label %102

102:                                              ; preds = %18, %101, %83
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @MCDI_EVENT_FIELD(i32, i32) #1

declare dso_local i32 @ptp_event_rx(%struct.efx_nic*, %struct.efx_ptp_data*) #1

declare dso_local i32 @ptp_event_fault(%struct.efx_nic*, %struct.efx_ptp_data*) #1

declare dso_local i32 @ptp_event_pps(%struct.efx_nic*, %struct.efx_ptp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
