; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dm1105/extr_dm1105.c_dm1105_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dm1105/extr_dm1105.c_dm1105_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dm1105_dev = type { i32 }

@DM05_LNB_MASK = common dso_local global i32 0, align 4
@DM05_LNB_OFF = common dso_local global i32 0, align 4
@DM05_LNB_13V = common dso_local global i32 0, align 4
@DM05_LNB_18V = common dso_local global i32 0, align 4
@DM1105_LNB_MASK = common dso_local global i32 0, align 4
@DM1105_LNB_OFF = common dso_local global i32 0, align 4
@DM1105_LNB_13V = common dso_local global i32 0, align 4
@DM1105_LNB_18V = common dso_local global i32 0, align 4
@DM1105_GPIOCTR = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i64 0, align 8
@DM1105_GPIOVAL = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @dm1105_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm1105_set_voltage(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dm1105_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = call %struct.dm1105_dev* @frontend_to_dm1105_dev(%struct.dvb_frontend* %10)
  store %struct.dm1105_dev* %11, %struct.dm1105_dev** %5, align 8
  %12 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %13 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 130, label %15
    i32 129, label %20
    i32 128, label %20
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @DM05_LNB_MASK, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @DM05_LNB_OFF, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @DM05_LNB_13V, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @DM05_LNB_18V, align 4
  store i32 %19, i32* %8, align 4
  br label %26

20:                                               ; preds = %2, %2
  br label %21

21:                                               ; preds = %2, %20
  %22 = load i32, i32* @DM1105_LNB_MASK, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @DM1105_LNB_OFF, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @DM1105_LNB_13V, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @DM1105_LNB_18V, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* @DM1105_GPIOCTR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dm_writel(i32 %27, i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @SEC_VOLTAGE_18, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @DM1105_GPIOVAL, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dm_writel(i32 %34, i32 %35)
  br label %50

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @SEC_VOLTAGE_13, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @DM1105_GPIOVAL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dm_writel(i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @DM1105_GPIOVAL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dm_writel(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %33
  ret i32 0
}

declare dso_local %struct.dm1105_dev* @frontend_to_dm1105_dev(%struct.dvb_frontend*) #1

declare dso_local i32 @dm_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
