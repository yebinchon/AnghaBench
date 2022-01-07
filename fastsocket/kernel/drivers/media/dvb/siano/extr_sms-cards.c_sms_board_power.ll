; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.sms_board = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sms_board_power(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sms_board*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %8 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.sms_board* @sms_get_board(i32 %9)
  store %struct.sms_board* %10, %struct.sms_board** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %32 [
    i32 128, label %12
    i32 129, label %22
    i32 130, label %22
  ]

12:                                               ; preds = %2
  %13 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %14 = load %struct.sms_board*, %struct.sms_board** %6, align 8
  %15 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = call i32 @sms_set_gpio(%struct.smscore_device_t* %13, i32 %16, i32 %20)
  br label %32

22:                                               ; preds = %2, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %27 = load %struct.sms_board*, %struct.sms_board** %6, align 8
  %28 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sms_set_gpio(%struct.smscore_device_t* %26, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %25, %22
  br label %32

32:                                               ; preds = %2, %31, %12
  ret i32 0
}

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local %struct.sms_board* @sms_get_board(i32) #1

declare dso_local i32 @sms_set_gpio(%struct.smscore_device_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
