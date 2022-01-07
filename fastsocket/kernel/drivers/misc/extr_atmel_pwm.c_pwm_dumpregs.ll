; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_dumpregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pwm_channel = type { i32 }

@pwm = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: mr %08x, sr %08x, imr %08x\0A\00", align 1
@PWM_MR = common dso_local global i32 0, align 4
@PWM_SR = common dso_local global i32 0, align 4
@PWM_IMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pwm ch%d - mr %08x, dty %u, prd %u, cnt %u\0A\00", align 1
@PWM_CMR = common dso_local global i32 0, align 4
@PWM_CDTY = common dso_local global i32 0, align 4
@PWM_CPRD = common dso_local global i32 0, align 4
@PWM_CCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_channel*, i8*)* @pwm_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_dumpregs(%struct.pwm_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.pwm_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pwm_channel* %0, %struct.pwm_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwm, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwm, align 8
  %13 = load i32, i32* @PWM_MR, align 4
  %14 = call i32 @pwm_readl(%struct.TYPE_5__* %12, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwm, align 8
  %16 = load i32, i32* @PWM_SR, align 4
  %17 = call i32 @pwm_readl(%struct.TYPE_5__* %15, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwm, align 8
  %19 = load i32, i32* @PWM_IMR, align 4
  %20 = call i32 @pwm_readl(%struct.TYPE_5__* %18, i32 %19)
  %21 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %24 = getelementptr inbounds %struct.pwm_channel, %struct.pwm_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %29 = load i32, i32* @PWM_CMR, align 4
  %30 = call i32 @pwm_channel_readl(%struct.pwm_channel* %28, i32 %29)
  %31 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %32 = load i32, i32* @PWM_CDTY, align 4
  %33 = call i32 @pwm_channel_readl(%struct.pwm_channel* %31, i32 %32)
  %34 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %35 = load i32, i32* @PWM_CPRD, align 4
  %36 = call i32 @pwm_channel_readl(%struct.pwm_channel* %34, i32 %35)
  %37 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %38 = load i32, i32* @PWM_CCNT, align 4
  %39 = call i32 @pwm_channel_readl(%struct.pwm_channel* %37, i32 %38)
  %40 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %30, i32 %33, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @pwm_readl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pwm_channel_readl(%struct.pwm_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
