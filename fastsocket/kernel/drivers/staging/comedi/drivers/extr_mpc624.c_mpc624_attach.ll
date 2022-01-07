; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [28 x i8] c"comedi%d: mpc624 [0x%04lx, \00", align 1
@MPC624_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mpc624\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"I/O port(s) in use\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPC624_SPEED_3_52_kHz = common dso_local global i8* null, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"3.52 kHz, \00", align 1
@MPC624_SPEED_1_76_kHz = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"1.76 kHz, \00", align 1
@MPC624_SPEED_880_Hz = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"880 Hz, \00", align 1
@MPC624_SPEED_440_Hz = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"440 Hz, \00", align 1
@MPC624_SPEED_220_Hz = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"220 Hz, \00", align 1
@MPC624_SPEED_110_Hz = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"110 Hz, \00", align 1
@MPC624_SPEED_55_Hz = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"55 Hz, \00", align 1
@MPC624_SPEED_27_5_Hz = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"27.5 Hz, \00", align 1
@MPC624_SPEED_13_75_Hz = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"13.75 Hz, \00", align 1
@MPC624_SPEED_6_875_Hz = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"6.875 Hz, \00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"illegal convertion rate setting! Valid numbers are 0..9. Using 9 => 6.875 Hz, \00", align 1
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"30 bit, \00", align 1
@range_mpc624_bipolar1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"1.01V]: \00", align 1
@range_mpc624_bipolar10 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"10.1V]: \00", align 1
@mpc624_ai_rinsn = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @mpc624_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc624_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @MPC624_SIZE, align 4
  %20 = call i32* @request_region(i64 %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %151

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call i64 @alloc_private(%struct.comedi_device* %32, i32 4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %151

38:                                               ; preds = %26
  %39 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  switch i64 %43, label %94 [
    i64 0, label %44
    i64 1, label %49
    i64 2, label %54
    i64 3, label %59
    i64 4, label %64
    i64 5, label %69
    i64 6, label %74
    i64 7, label %79
    i64 8, label %84
    i64 9, label %89
  ]

44:                                               ; preds = %38
  %45 = load i8*, i8** @MPC624_SPEED_3_52_kHz, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %99

49:                                               ; preds = %38
  %50 = load i8*, i8** @MPC624_SPEED_1_76_kHz, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %99

54:                                               ; preds = %38
  %55 = load i8*, i8** @MPC624_SPEED_880_Hz, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %99

59:                                               ; preds = %38
  %60 = load i8*, i8** @MPC624_SPEED_440_Hz, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %99

64:                                               ; preds = %38
  %65 = load i8*, i8** @MPC624_SPEED_220_Hz, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %99

69:                                               ; preds = %38
  %70 = load i8*, i8** @MPC624_SPEED_110_Hz, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %99

74:                                               ; preds = %38
  %75 = load i8*, i8** @MPC624_SPEED_55_Hz, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %99

79:                                               ; preds = %38
  %80 = load i8*, i8** @MPC624_SPEED_27_5_Hz, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %99

84:                                               ; preds = %38
  %85 = load i8*, i8** @MPC624_SPEED_13_75_Hz, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %99

89:                                               ; preds = %38
  %90 = load i8*, i8** @MPC624_SPEED_6_875_Hz, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %99

94:                                               ; preds = %38
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.13, i64 0, i64 0))
  %96 = load i8*, i8** @MPC624_SPEED_3_52_kHz, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44
  %100 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %101 = call i64 @alloc_subdevices(%struct.comedi_device* %100, i32 1)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %151

106:                                              ; preds = %99
  %107 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 2
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %108, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i64 0
  store %struct.comedi_subdevice* %110, %struct.comedi_subdevice** %6, align 8
  %111 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @SDF_READABLE, align 4
  %115 = load i32, i32* @SDF_DIFF, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 1
  store i32 8, i32* %120, align 4
  %121 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %122 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  switch i64 %125, label %126 [
  ]

126:                                              ; preds = %106
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 2
  store i32 1073741823, i32* %128, align 8
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126
  %131 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %132 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  switch i64 %135, label %140 [
    i64 0, label %136
  ]

136:                                              ; preds = %130
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %138 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %137, i32 0, i32 5
  store i32* @range_mpc624_bipolar1, i32** %138, align 8
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %144

140:                                              ; preds = %130
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %141, i32 0, i32 5
  store i32* @range_mpc624_bipolar10, i32** %142, align 8
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %136
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  %147 = load i32, i32* @mpc624_ai_rinsn, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %144, %103, %35, %22
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32* @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
