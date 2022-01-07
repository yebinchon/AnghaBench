; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }

@PLX_INTRCS_REG = common dso_local global i64 0, align 8
@HW_STATUS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"cb_pcidas64: hw status 0x%x \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"plx status 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"cb_pcidas64: premature interrupt, ignoring\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ICS_LDIA = common dso_local global i32 0, align 4
@PLX_DBR_OUT_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c" cleared local doorbell bits 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exiting handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLX_INTRCS_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HW_STATUS_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call zeroext i16 @readw(i64 %24)
  store i16 %25, i16* %7, align 2
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %2
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load i16, i16* %7, align 2
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @handle_ai_interrupt(%struct.comedi_device* %41, i16 zeroext %42, i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = load i16, i16* %7, align 2
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @handle_ao_interrupt(%struct.comedi_device* %45, i16 zeroext %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ICS_LDIA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %40
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PLX_DBR_OUT_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PLX_DBR_OUT_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %61, i64 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %53, %40
  %72 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, ...) #1

declare dso_local i32 @handle_ai_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @handle_ao_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
