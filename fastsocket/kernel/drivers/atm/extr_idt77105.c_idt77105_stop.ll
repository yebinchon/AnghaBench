; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77105.c_idt77105_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77105.c_idt77105_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77105_priv = type { %struct.idt77105_priv*, %struct.atm_dev* }
%struct.atm_dev = type { i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s(itf %d): stopping IDT77105\0A\00", align 1
@MCR = common dso_local global i32 0, align 4
@IDT77105_MCR_EIP = common dso_local global i32 0, align 4
@idt77105_all = common dso_local global %struct.idt77105_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @idt77105_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77105_stop(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.idt77105_priv*, align 8
  %4 = alloca %struct.idt77105_priv*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %5 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %6 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %9 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load i32, i32* @MCR, align 4
  %13 = call i32 @GET(i32 %12)
  %14 = load i32, i32* @IDT77105_MCR_EIP, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @MCR, align 4
  %18 = call i32 @PUT(i32 %16, i32 %17)
  store %struct.idt77105_priv* null, %struct.idt77105_priv** %4, align 8
  %19 = load %struct.idt77105_priv*, %struct.idt77105_priv** @idt77105_all, align 8
  store %struct.idt77105_priv* %19, %struct.idt77105_priv** %3, align 8
  br label %20

20:                                               ; preds = %50, %1
  %21 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %22 = icmp ne %struct.idt77105_priv* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %25 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %24, i32 0, i32 1
  %26 = load %struct.atm_dev*, %struct.atm_dev** %25, align 8
  %27 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %28 = icmp eq %struct.atm_dev* %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.idt77105_priv*, %struct.idt77105_priv** %4, align 8
  %31 = icmp ne %struct.idt77105_priv* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %34 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %33, i32 0, i32 0
  %35 = load %struct.idt77105_priv*, %struct.idt77105_priv** %34, align 8
  %36 = load %struct.idt77105_priv*, %struct.idt77105_priv** %4, align 8
  %37 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %36, i32 0, i32 0
  store %struct.idt77105_priv* %35, %struct.idt77105_priv** %37, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %40 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %39, i32 0, i32 0
  %41 = load %struct.idt77105_priv*, %struct.idt77105_priv** %40, align 8
  store %struct.idt77105_priv* %41, %struct.idt77105_priv** @idt77105_all, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %44 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %46 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %48 = call i32 @kfree(%struct.idt77105_priv* %47)
  br label %55

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  store %struct.idt77105_priv* %51, %struct.idt77105_priv** %4, align 8
  %52 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %53 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %52, i32 0, i32 0
  %54 = load %struct.idt77105_priv*, %struct.idt77105_priv** %53, align 8
  store %struct.idt77105_priv* %54, %struct.idt77105_priv** %3, align 8
  br label %20

55:                                               ; preds = %42, %20
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @PUT(i32, i32) #1

declare dso_local i32 @GET(i32) #1

declare dso_local i32 @kfree(%struct.idt77105_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
