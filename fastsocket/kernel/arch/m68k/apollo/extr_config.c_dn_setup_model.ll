; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_config.c_dn_setup_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_config.c_dn_setup_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Apollo hardware found: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@apollo_models = common dso_local global i32* null, align 8
@apollo_model = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown apollo model\00", align 1
@SAU8_SIO01_PHYSADDR = common dso_local global i32 0, align 4
@sio01_physaddr = common dso_local global i32 0, align 4
@SAU8_RTC_PHYSADDR = common dso_local global i32 0, align 4
@rtc_physaddr = common dso_local global i32 0, align 4
@SAU8_PICA = common dso_local global i32 0, align 4
@pica_physaddr = common dso_local global i32 0, align 4
@SAU8_PICB = common dso_local global i32 0, align 4
@picb_physaddr = common dso_local global i32 0, align 4
@SAU8_CPUCTRL = common dso_local global i32 0, align 4
@cpuctrl_physaddr = common dso_local global i32 0, align 4
@SAU8_TIMER = common dso_local global i32 0, align 4
@timer_physaddr = common dso_local global i32 0, align 4
@SAU7_SIO01_PHYSADDR = common dso_local global i32 0, align 4
@SAU7_SIO23_PHYSADDR = common dso_local global i32 0, align 4
@sio23_physaddr = common dso_local global i32 0, align 4
@SAU7_RTC_PHYSADDR = common dso_local global i32 0, align 4
@SAU7_PICA = common dso_local global i32 0, align 4
@SAU7_PICB = common dso_local global i32 0, align 4
@SAU7_CPUCTRL = common dso_local global i32 0, align 4
@SAU7_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Apollo model not yet supported\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Undefined apollo model\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_setup_model() #0 {
  %1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %2 = load i32*, i32** @apollo_models, align 8
  %3 = load i32, i32* @apollo_model, align 4
  %4 = sub nsw i32 %3, 133
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %2, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @apollo_model, align 4
  switch i32 %9, label %37 [
    i32 128, label %10
    i32 133, label %12
    i32 132, label %12
    i32 130, label %19
    i32 129, label %27
    i32 131, label %29
  ]

10:                                               ; preds = %0
  %11 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %39

12:                                               ; preds = %0, %0
  %13 = load i32, i32* @SAU8_SIO01_PHYSADDR, align 4
  store i32 %13, i32* @sio01_physaddr, align 4
  %14 = load i32, i32* @SAU8_RTC_PHYSADDR, align 4
  store i32 %14, i32* @rtc_physaddr, align 4
  %15 = load i32, i32* @SAU8_PICA, align 4
  store i32 %15, i32* @pica_physaddr, align 4
  %16 = load i32, i32* @SAU8_PICB, align 4
  store i32 %16, i32* @picb_physaddr, align 4
  %17 = load i32, i32* @SAU8_CPUCTRL, align 4
  store i32 %17, i32* @cpuctrl_physaddr, align 4
  %18 = load i32, i32* @SAU8_TIMER, align 4
  store i32 %18, i32* @timer_physaddr, align 4
  br label %39

19:                                               ; preds = %0
  %20 = load i32, i32* @SAU7_SIO01_PHYSADDR, align 4
  store i32 %20, i32* @sio01_physaddr, align 4
  %21 = load i32, i32* @SAU7_SIO23_PHYSADDR, align 4
  store i32 %21, i32* @sio23_physaddr, align 4
  %22 = load i32, i32* @SAU7_RTC_PHYSADDR, align 4
  store i32 %22, i32* @rtc_physaddr, align 4
  %23 = load i32, i32* @SAU7_PICA, align 4
  store i32 %23, i32* @pica_physaddr, align 4
  %24 = load i32, i32* @SAU7_PICB, align 4
  store i32 %24, i32* @picb_physaddr, align 4
  %25 = load i32, i32* @SAU7_CPUCTRL, align 4
  store i32 %25, i32* @cpuctrl_physaddr, align 4
  %26 = load i32, i32* @SAU7_TIMER, align 4
  store i32 %26, i32* @timer_physaddr, align 4
  br label %39

27:                                               ; preds = %0
  %28 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %39

29:                                               ; preds = %0
  %30 = load i32, i32* @SAU7_SIO01_PHYSADDR, align 4
  store i32 %30, i32* @sio01_physaddr, align 4
  %31 = load i32, i32* @SAU7_SIO23_PHYSADDR, align 4
  store i32 %31, i32* @sio23_physaddr, align 4
  %32 = load i32, i32* @SAU7_RTC_PHYSADDR, align 4
  store i32 %32, i32* @rtc_physaddr, align 4
  %33 = load i32, i32* @SAU7_PICA, align 4
  store i32 %33, i32* @pica_physaddr, align 4
  %34 = load i32, i32* @SAU7_PICB, align 4
  store i32 %34, i32* @picb_physaddr, align 4
  %35 = load i32, i32* @SAU7_CPUCTRL, align 4
  store i32 %35, i32* @cpuctrl_physaddr, align 4
  %36 = load i32, i32* @SAU7_TIMER, align 4
  store i32 %36, i32* @timer_physaddr, align 4
  br label %39

37:                                               ; preds = %0
  %38 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29, %27, %19, %12, %10
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
