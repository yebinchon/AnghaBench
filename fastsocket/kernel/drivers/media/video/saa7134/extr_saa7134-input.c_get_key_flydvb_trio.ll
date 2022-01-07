; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_flydvb_trio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_flydvb_trio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"get_key_flydvb_trio: ir->c->adapter->algo_data is NULL!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"send wake up byte to pic16C505 (IR chip)failed %dx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_flydvb_trio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_flydvb_trio(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %17, align 8
  store %struct.saa7134_dev* %18, %struct.saa7134_dev** %11, align 8
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %11, align 8
  %20 = icmp eq %struct.saa7134_dev* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %27 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %28 = call i32 @saa_clearb(i32 %26, i32 %27)
  %29 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %30 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %31 = call i32 @saa_setb(i32 %29, i32 %30)
  %32 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %33 = ashr i32 %32, 2
  %34 = call i32 @saa_readl(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 262144, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %78

40:                                               ; preds = %25
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %78

45:                                               ; preds = %40
  store i8 0, i8* %10, align 1
  br label %46

46:                                               ; preds = %56, %45
  %47 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %48 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @i2c_master_send(%struct.TYPE_5__* %49, i8* %10, i32 1)
  %51 = icmp ne i32 1, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = icmp slt i32 %53, 10
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @msleep(i32 10)
  br label %46

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %46
  %64 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @i2c_master_recv(%struct.TYPE_5__* %66, i8* %10, i32 1)
  %68 = icmp ne i32 1, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %78

73:                                               ; preds = %63
  %74 = load i8, i8* %10, align 1
  %75 = load i8*, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  %76 = load i8, i8* %10, align 1
  %77 = load i8*, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %69, %58, %44, %39, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @i2cdprintk(i8*, ...) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
