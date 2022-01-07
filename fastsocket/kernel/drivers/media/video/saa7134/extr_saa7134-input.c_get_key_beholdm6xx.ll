; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_beholdm6xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_beholdm6xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*)* @get_key_beholdm6xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_beholdm6xx(%struct.IR_i2c* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %10, align 8
  %18 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %19 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %20 = call i32 @saa_clearb(i32 %18, i32 %19)
  %21 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %22 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %23 = call i32 @saa_setb(i32 %21, i32 %22)
  %24 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %25 = ashr i32 %24, 2
  %26 = call i32 @saa_readl(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 4194304, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

32:                                               ; preds = %3
  %33 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 45, i32* %36, align 8
  %37 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %38 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %41 = call i32 @i2c_master_recv(%struct.TYPE_4__* %39, i8* %40, i32 12)
  %42 = icmp ne i32 12, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = call i32 @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %32
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 9
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = trunc i32 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %78

59:                                               ; preds = %47
  %60 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 10
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 16
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 11
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 9
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 0
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %59, %58, %43, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @i2cdprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
