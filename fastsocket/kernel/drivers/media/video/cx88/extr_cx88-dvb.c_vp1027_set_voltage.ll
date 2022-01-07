; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_vp1027_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_vp1027_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { {}* }

@.str = private unnamed_addr constant [20 x i8] c"LNB SEC Voltage=13\0A\00", align 1
@MO_GP0_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"LNB SEC Voltage=18\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"LNB Voltage OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @vp1027_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp1027_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %2
  %18 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @MO_GP0_IO, align 4
  %20 = call i32 @cx_write(i32 %19, i32 4640)
  br label %29

21:                                               ; preds = %2
  %22 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @MO_GP0_IO, align 4
  %24 = call i32 @cx_write(i32 %23, i32 4642)
  br label %29

25:                                               ; preds = %2
  %26 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @MO_GP0_IO, align 4
  %28 = call i32 @cx_write(i32 %27, i32 4656)
  br label %29

29:                                               ; preds = %2, %25, %21, %17
  %30 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %31 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.dvb_frontend*, i32)**
  %33 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.dvb_frontend*, i32)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.dvb_frontend*, i32)**
  %39 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %39(%struct.dvb_frontend* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
