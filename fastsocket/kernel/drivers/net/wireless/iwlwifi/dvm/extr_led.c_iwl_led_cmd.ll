; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_led_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_led_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_led_cmd = type { i8*, i8*, i32, i32 }

@IWL_DEF_LED_INTRVL = common dso_local global i32 0, align 4
@IWL_LED_LINK = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IWL_LED_SOLID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Led blink time compensation=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i64)* @iwl_led_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_led_cmd(%struct.iwl_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_led_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 2
  %13 = load i32, i32* @IWL_DEF_LED_INTRVL, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 3
  %15 = load i32, i32* @IWL_LED_LINK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @STATUS_READY, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 3
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %87

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %87

37:                                               ; preds = %30, %24
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @IWL_LED_SOLID, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IWL_DEBUG_LED(%struct.iwl_priv* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @iwl_blink_compensation(%struct.iwl_priv* %52, i64 %53, i32 %60)
  %62 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @iwl_blink_compensation(%struct.iwl_priv* %63, i64 %64, i32 %71)
  %73 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %75 = call i32 @iwl_send_led_cmd(%struct.iwl_priv* %74, %struct.iwl_led_cmd* %8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %42
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %42
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %36, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_LED(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i8* @iwl_blink_compensation(%struct.iwl_priv*, i64, i32) #1

declare dso_local i32 @iwl_send_led_cmd(%struct.iwl_priv*, %struct.iwl_led_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
