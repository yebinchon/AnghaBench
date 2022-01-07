; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_clk.c_clk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_clk.c_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"enet0\00", align 1
@clk_enet0 = common dso_local global %struct.clk zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"enet1\00", align 1
@clk_enet1 = common dso_local global %struct.clk zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ephy\00", align 1
@clk_ephy = common dso_local global %struct.clk zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"usbh\00", align 1
@clk_usbh = common dso_local global %struct.clk zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@clk_spi = common dso_local global %struct.clk zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@clk_periph = common dso_local global %struct.clk zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@clk_pcm = common dso_local global %struct.clk zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.clk* @clk_enet0, %struct.clk** %3, align 8
  br label %47

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store %struct.clk* @clk_enet1, %struct.clk** %3, align 8
  br label %47

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store %struct.clk* @clk_ephy, %struct.clk** %3, align 8
  br label %47

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.clk* @clk_usbh, %struct.clk** %3, align 8
  br label %47

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.clk* @clk_spi, %struct.clk** %3, align 8
  br label %47

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.clk* @clk_periph, %struct.clk** %3, align 8
  br label %47

35:                                               ; preds = %30
  %36 = call i64 (...) @BCMCPU_IS_6358()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store %struct.clk* @clk_pcm, %struct.clk** %3, align 8
  br label %47

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.clk* @ERR_PTR(i32 %45)
  store %struct.clk* %46, %struct.clk** %3, align 8
  br label %47

47:                                               ; preds = %43, %42, %34, %29, %24, %19, %14, %9
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %48
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
