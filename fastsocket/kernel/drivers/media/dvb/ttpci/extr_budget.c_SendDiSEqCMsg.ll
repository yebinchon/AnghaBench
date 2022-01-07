; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_SendDiSEqCMsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_SendDiSEqCMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*, i32, i32*, i64)* @SendDiSEqCMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendDiSEqCMsg(%struct.budget* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.budget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.budget*, %struct.budget** %5, align 8
  %12 = getelementptr inbounds %struct.budget, %struct.budget* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %9, align 8
  %14 = load %struct.budget*, %struct.budget** %5, align 8
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %14)
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %17 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %18 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %16, i32 3, i32 %17)
  %19 = call i32 @mdelay(i32 16)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %32, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.budget*, %struct.budget** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DiseqcSendByte(%struct.budget* %25, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %20

35:                                               ; preds = %20
  %36 = call i32 @mdelay(i32 16)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, -1
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.budget*, %struct.budget** %5, align 8
  %44 = call i32 @DiseqcSendByte(%struct.budget* %43, i32 255)
  br label %54

45:                                               ; preds = %39
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %47 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %48 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %46, i32 3, i32 %47)
  %49 = call i32 @mdelay(i32 12)
  %50 = call i32 @udelay(i32 500)
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %52 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %53 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %51, i32 3, i32 %52)
  br label %54

54:                                               ; preds = %45, %42
  %55 = call i32 @msleep(i32 20)
  br label %56

56:                                               ; preds = %54, %35
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DiseqcSendByte(%struct.budget*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
