; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_cs8420.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_cs8420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@mode8420pro = common dso_local global i32* null, align 8
@mode8420con = common dso_local global i32* null, align 8
@INIT8420LEN = common dso_local global i32 0, align 4
@init8420 = common dso_local global i32* null, align 8
@MODE8420LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"stradis%d: CS8420 initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, i32)* @initialize_cs8420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cs8420(%struct.saa7146* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.saa7146* %0, %struct.saa7146** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** @mode8420pro, align 8
  store i32* %10, i32** %6, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** @mode8420con, align 8
  store i32* %12, i32** %6, align 8
  br label %13

13:                                               ; preds = %11, %9
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @INIT8420LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %20 = load i32*, i32** @init8420, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @init8420, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I2CWrite(%struct.saa7146* %19, i32 32, i32 %25, i32 %32, i32 2)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %14

37:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MODE8420LEN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @I2CWrite(%struct.saa7146* %43, i32 32, i32 %49, i32 %56, i32 2)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %63 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local i32 @I2CWrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
