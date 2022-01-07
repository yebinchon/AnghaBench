; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_i2c.c_saa7146_i2c_adapter_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_i2c.c_saa7146_i2c_adapter_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_adapter = type { i32, i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"bitrate: 0x%08x\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@saa7146_algo = common dso_local global i32 0, align 4
@SAA7146_I2C_TIMEOUT = common dso_local global i32 0, align 4
@SAA7146_I2C_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @DEB_EE(i8* %9)
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = load i32, i32* @MC1, align 4
  %13 = load i32, i32* @MASK_08, align 4
  %14 = load i32, i32* @MASK_24, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @saa7146_write(%struct.saa7146_dev* %11, i32 %12, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %21 = call i32 @saa7146_i2c_reset(%struct.saa7146_dev* %20)
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %23 = icmp ne %struct.i2c_adapter* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %27 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %26, i32 0, i32 1
  %28 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %25, i32* %27)
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %30 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 3
  store i32* @saa7146_algo, i32** %37, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @SAA7146_I2C_TIMEOUT, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @SAA7146_I2C_RETRIES, align 4
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %24, %3
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_i2c_reset(%struct.saa7146_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
