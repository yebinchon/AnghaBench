; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@ATKBD_CMD_SETLEDS = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SLEEP = common dso_local global i32 0, align 4
@LED_SUSPEND = common dso_local global i32 0, align 4
@LED_MISC = common dso_local global i32 0, align 4
@LED_MUTE = common dso_local global i32 0, align 4
@ATKBD_CMD_EX_SETLEDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*)* @atkbd_set_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_leds(%struct.atkbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  %6 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %7 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %6, i32 0, i32 2
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load i32, i32* @LED_SCROLLL, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @test_bit(i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load i32, i32* @LED_NUML, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  %25 = or i32 %16, %24
  %26 = load i32, i32* @LED_CAPSL, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 4, i32 0
  %34 = or i32 %25, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %38 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* @ATKBD_CMD_SETLEDS, align 4
  %41 = call i64 @ps2_command(i32* %38, i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %106

44:                                               ; preds = %1
  %45 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %46 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %44
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* @LED_COMPOSE, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = load i32, i32* @LED_SLEEP, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @test_bit(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 0
  %67 = or i32 %58, %66
  %68 = load i32, i32* @LED_SUSPEND, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @test_bit(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 4, i32 0
  %76 = or i32 %67, %75
  %77 = load i32, i32* @LED_MISC, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @test_bit(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 16, i32 0
  %85 = or i32 %76, %84
  %86 = load i32, i32* @LED_MUTE, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @test_bit(i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 32, i32 0
  %94 = or i32 %85, %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 %95, i8* %96, align 1
  %97 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %98 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %100 = load i32, i32* @ATKBD_CMD_EX_SETLEDS, align 4
  %101 = call i64 @ps2_command(i32* %98, i8* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %106

104:                                              ; preds = %49
  br label %105

105:                                              ; preds = %104, %44
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %103, %43
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ps2_command(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
