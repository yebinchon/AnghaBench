; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_set_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_set_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CMD_RADIO_ON = common dso_local global i32 0, align 4
@CMD_RADIO_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"at76_set_card_command(%d) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*, i32)* @at76_set_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_set_radio(%struct.at76_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at76_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.at76_priv* %0, %struct.at76_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.at76_priv*, %struct.at76_priv** %4, align 8
  %9 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @CMD_RADIO_ON, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @CMD_RADIO_OFF, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  %23 = load %struct.at76_priv*, %struct.at76_priv** %4, align 8
  %24 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @at76_set_card_command(i32 %25, i32 %26, i32* null, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.at76_priv*, %struct.at76_priv** %4, align 8
  %32 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @wiphy_err(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %40

39:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.at76_priv*, %struct.at76_priv** %4, align 8
  %43 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @at76_set_card_command(i32, i32, i32*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
