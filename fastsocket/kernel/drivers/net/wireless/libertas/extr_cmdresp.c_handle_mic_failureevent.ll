; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_handle_mic_failureevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_handle_mic_failureevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"MLME-MICHAELMICFAILURE.indication \00", align 1
@MACREG_INT_CODE_MIC_ERR_UNICAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"unicast \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"multicast \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i64)* @handle_mic_failureevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mic_failureevent(%struct.lbs_private* %0, i64 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [50 x i8], align 16
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @LBS_DEB_CMD, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 50)
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %11 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @MACREG_INT_CODE_MIC_ERR_UNICAST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %17 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %20 = call i32 @strcat(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %24 = call i32 @lbs_send_iwevcustom_event(%struct.lbs_private* %22, i8* %23)
  %25 = load i32, i32* @LBS_DEB_CMD, align 4
  %26 = call i32 @lbs_deb_leave(i32 %25)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @lbs_send_iwevcustom_event(%struct.lbs_private*, i8*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
