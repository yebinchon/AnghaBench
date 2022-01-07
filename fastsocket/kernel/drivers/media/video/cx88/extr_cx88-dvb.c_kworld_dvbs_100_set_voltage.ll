; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_kworld_dvbs_100_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_kworld_dvbs_100_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { {}* }

@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @kworld_dvbs_100_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kworld_dvbs_100_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx8802_dev*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %11, align 8
  store %struct.cx8802_dev* %12, %struct.cx8802_dev** %6, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 0
  %15 = load %struct.cx88_core*, %struct.cx88_core** %14, align 8
  store %struct.cx88_core* %15, %struct.cx88_core** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @MO_GP0_IO, align 4
  %21 = call i32 @cx_write(i32 %20, i32 1787)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @MO_GP0_IO, align 4
  %24 = call i32 @cx_write(i32 %23, i32 1785)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %27 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.dvb_frontend*, i32)**
  %29 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.dvb_frontend*, i32)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %33 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.dvb_frontend*, i32)**
  %35 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %34, align 8
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %35(%struct.dvb_frontend* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
