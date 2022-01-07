; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_frda_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_frda_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_ca_private* }
%struct.dvb_ca_private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.dvb_ca_en50221*, i32, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"FR/DA IRQ slot:%i\0A\00", align 1
@CTRLIF_STATUS = common dso_local global i32 0, align 4
@STATUSREG_DA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CAM supports DA IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_ca_en50221_frda_irq(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_en50221*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_private*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %7, i32 0, i32 0
  %9 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  store %struct.dvb_ca_private* %9, %struct.dvb_ca_private** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %53 [
    i32 129, label %20
    i32 128, label %44
  ]

20:                                               ; preds = %2
  %21 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dvb_ca_en50221*, i32, i32)*, i32 (%struct.dvb_ca_en50221*, i32, i32)** %24, align 8
  %26 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CTRLIF_STATUS, align 4
  %29 = call i32 %25(%struct.dvb_ca_en50221* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @STATUSREG_DA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %20
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %51 = call i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %2, %52, %43
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
