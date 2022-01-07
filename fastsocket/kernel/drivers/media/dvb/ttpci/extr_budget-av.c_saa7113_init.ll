; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_saa7113_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_saa7113_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_av = type { %struct.budget }
%struct.budget = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@saa7113_tab = common dso_local global i32* null, align 8
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"saa7113 not found on KNC card\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"saa7113 detected and initializing\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"saa7113  status=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_av*)* @saa7113_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7113_init(%struct.budget_av* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.budget_av*, align 8
  %4 = alloca %struct.budget*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca i32*, align 8
  store %struct.budget_av* %0, %struct.budget_av** %3, align 8
  %7 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %8 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %7, i32 0, i32 0
  store %struct.budget* %8, %struct.budget** %4, align 8
  %9 = load %struct.budget*, %struct.budget** %4, align 8
  %10 = getelementptr inbounds %struct.budget, %struct.budget* %9, i32 0, i32 1
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %5, align 8
  %12 = load i32*, i32** @saa7113_tab, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %14 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %15 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %13, i32 0, i32 %14)
  %16 = call i32 @msleep(i32 200)
  %17 = load %struct.budget*, %struct.budget** %4, align 8
  %18 = getelementptr inbounds %struct.budget, %struct.budget* %17, i32 0, i32 0
  %19 = call i32 @i2c_writereg(i32* %18, i32 74, i32 1, i32 8)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %1
  %26 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %31, %25
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.budget*, %struct.budget** %4, align 8
  %33 = getelementptr inbounds %struct.budget, %struct.budget* %32, i32 0, i32 0
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @i2c_writereg(i32* %33, i32 74, i32 %35, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %6, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.budget*, %struct.budget** %4, align 8
  %44 = getelementptr inbounds %struct.budget, %struct.budget* %43, i32 0, i32 0
  %45 = call i32 @i2c_readreg(i32* %44, i32 74, i32 31)
  %46 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_writereg(i32*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @i2c_readreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
