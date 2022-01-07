; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_msi_tvanywhere_plus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_msi_tvanywhere_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"get_key_msi_tvanywhere_plus: ir->c->adapter->algo_data is NULL!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"get_key_msi_tvanywhere_plus: Key = 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_msi_tvanywhere_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_msi_tvanywhere_plus(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %10, align 8
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %19 = icmp eq %struct.saa7134_dev* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @i2cdprintk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %26 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %27 = call i32 @saa_clearb(i32 %25, i32 %26)
  %28 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %29 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %30 = call i32 @saa_setb(i32 %28, i32 %29)
  %31 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %32 = ashr i32 %31, 2
  %33 = call i32 @saa_readl(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %60

38:                                               ; preds = %24
  %39 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @i2c_master_recv(%struct.TYPE_4__* %41, i8* %8, i32 1)
  %43 = icmp ne i32 1, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %60

48:                                               ; preds = %38
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %60

53:                                               ; preds = %48
  %54 = load i8, i8* %8, align 1
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %54)
  %56 = load i8, i8* %8, align 1
  %57 = load i8*, i8** %6, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8, i8* %8, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %52, %44, %37, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @i2cdprintk(i8*) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
