; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_show_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%30s [Address ] : Hex\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Register\00", align 1
@hw_data = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%30s [%08X] : %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_registers(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw2100_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %8, align 8
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %10, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %55, %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_data, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_data, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @read_register(%struct.net_device* %29, i32 %35, i32* %11)
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_data, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_data, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %23

58:                                               ; preds = %23
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  ret i32 %64
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @read_register(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
