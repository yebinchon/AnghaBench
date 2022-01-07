; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_tevii_dvbs_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_tevii_dvbs_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { {}* }

@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tevii_dvbs_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tevii_dvbs_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  %16 = load i32, i32* @MO_GP0_IO, align 4
  %17 = call i32 @cx_set(i32 %16, i32 24640)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %28 [
    i32 130, label %19
    i32 129, label %22
    i32 128, label %25
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @MO_GP0_IO, align 4
  %21 = call i32 @cx_clear(i32 %20, i32 32)
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @MO_GP0_IO, align 4
  %24 = call i32 @cx_set(i32 %23, i32 32)
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @MO_GP0_IO, align 4
  %27 = call i32 @cx_clear(i32 %26, i32 32)
  br label %28

28:                                               ; preds = %2, %25, %22, %19
  %29 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.dvb_frontend*, i32)**
  %32 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.dvb_frontend*, i32)**
  %38 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %38(%struct.dvb_frontend* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
