; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_samsung_smt_7020_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dvb.c_samsung_smt_7020_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@MO_GP0_IO = common dso_local global i32 0, align 4
@ISL6421_EN1 = common dso_local global i32 0, align 4
@ISL6421_LLC1 = common dso_local global i32 0, align 4
@ISL6421_VSEL1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @samsung_smt_7020_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_smt_7020_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx8802_dev*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %13, align 8
  store %struct.cx8802_dev* %14, %struct.cx8802_dev** %6, align 8
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 0
  %17 = load %struct.cx88_core*, %struct.cx88_core** %16, align 8
  store %struct.cx88_core* %17, %struct.cx88_core** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32* %8, i32** %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @MO_GP0_IO, align 4
  %23 = call i32 @cx_set(i32 %22, i32 32768)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %40 [
    i32 128, label %25
    i32 130, label %26
    i32 129, label %32
  ]

25:                                               ; preds = %2
  br label %43

26:                                               ; preds = %2
  %27 = load i32, i32* @ISL6421_EN1, align 4
  %28 = load i32, i32* @ISL6421_LLC1, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MO_GP0_IO, align 4
  %31 = call i32 @cx_clear(i32 %30, i32 128)
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @ISL6421_EN1, align 4
  %34 = load i32, i32* @ISL6421_LLC1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ISL6421_VSEL1, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @MO_GP0_IO, align 4
  %39 = call i32 @cx_clear(i32 %38, i32 128)
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %32, %26, %25
  %44 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %45 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %44, i32 0, i32 0
  %46 = load %struct.cx88_core*, %struct.cx88_core** %45, align 8
  %47 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %46, i32 0, i32 0
  %48 = call i32 @i2c_transfer(i32* %47, %struct.i2c_msg* %9, i32 1)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %40
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
