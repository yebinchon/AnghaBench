; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_s0_state_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_s0_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32*)* }
%struct.TYPE_12__ = type { i64 }

@HFCUSB_DBG_STATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"HFC-S USB: S0 statechange(%d -> %d)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"HFC-S USB: T3 deactivated\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"HFC-S USB: T4 deactivated\00", align 1
@PH_ACTIVATE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"HFC-S USB: PH_ACTIVATE | INDICATION sent\00", align 1
@LED_S0_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"HFC-S USB: T4 activated\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HFC_TIMER_T4 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"HFC-S USB: PH_DEACTIVATE | INDICATION sent\00", align 1
@LED_S0_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @s0_state_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s0_state_handler(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %2
  br label %144

19:                                               ; preds = %15
  %20 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i8*, ...) @DBG(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %44

32:                                               ; preds = %29, %26, %19
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = call i64 @timer_pending(%struct.TYPE_12__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = call i32 @del_timer(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %43 = call i32 (i32, i8*, ...) @DBG(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %29
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 7
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = call i64 @timer_pending(%struct.TYPE_12__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = call i32 @del_timer(%struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %58 = call i32 (i32, i8*, ...) @DBG(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 7
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32*)** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* @PH_ACTIVATE, align 4
  %77 = load i32, i32* @INDICATION, align 4
  %78 = or i32 %76, %77
  %79 = call i32 %72(%struct.TYPE_13__* %75, i32 %78, i32* null)
  %80 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %81 = call i32 (i32, i8*, ...) @DBG(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = load i32, i32* @LED_S0_ON, align 4
  %86 = call i32 @handle_led(%struct.TYPE_11__* %84, i32 %85)
  br label %140

87:                                               ; preds = %62, %59
  %88 = load i32, i32* %4, align 4
  %89 = icmp sle i32 %88, 3
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %118

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %98 = call i32 (i32, i8*, ...) @DBG(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = call i64 @timer_pending(%struct.TYPE_12__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %96
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i32, i32* @HFC_TIMER_T4, align 4
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 1000
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %104, %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = call i32 @add_timer(%struct.TYPE_12__* %115)
  br label %117

117:                                              ; preds = %103, %96
  br label %138

118:                                              ; preds = %93
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32*)** %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* @PH_DEACTIVATE, align 4
  %128 = load i32, i32* @INDICATION, align 4
  %129 = or i32 %127, %128
  %130 = call i32 %123(%struct.TYPE_13__* %126, i32 %129, i32* null)
  %131 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %132 = call i32 (i32, i8*, ...) @DBG(i32 %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = load i32, i32* @LED_S0_OFF, align 4
  %137 = call i32 @handle_led(%struct.TYPE_11__* %135, i32 %136)
  br label %138

138:                                              ; preds = %118, %117
  br label %139

139:                                              ; preds = %138, %87
  br label %140

140:                                              ; preds = %139, %67
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %18
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i64 @timer_pending(%struct.TYPE_12__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_12__*) #1

declare dso_local i32 @handle_led(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
