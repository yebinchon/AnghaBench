; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sunkbd.c_sunkbd_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sunkbd.c_sunkbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sunkbd = type { i32 }

@SUNKBD_CMD_SETLED = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@SUNKBD_CMD_NOCLICK = common dso_local global i32 0, align 4
@SUNKBD_CMD_BELLOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @sunkbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunkbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sunkbd*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.sunkbd* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.sunkbd* %12, %struct.sunkbd** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %85 [
    i32 131, label %14
    i32 130, label %66
  ]

14:                                               ; preds = %4
  %15 = load %struct.sunkbd*, %struct.sunkbd** %10, align 8
  %16 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SUNKBD_CMD_SETLED, align 4
  %19 = call i32 @serio_write(i32 %17, i32 %18)
  %20 = load %struct.sunkbd*, %struct.sunkbd** %10, align 8
  %21 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LED_CAPSL, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = shl i32 %31, 3
  %33 = load i32, i32* @LED_SCROLLL, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = shl i32 %41, 2
  %43 = or i32 %32, %42
  %44 = load i32, i32* @LED_COMPOSE, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @test_bit(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = shl i32 %52, 1
  %54 = or i32 %43, %53
  %55 = load i32, i32* @LED_NUML, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = or i32 %54, %63
  %65 = call i32 @serio_write(i32 %22, i32 %64)
  store i32 0, i32* %5, align 4
  br label %86

66:                                               ; preds = %4
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %84 [
    i32 128, label %68
    i32 129, label %76
  ]

68:                                               ; preds = %66
  %69 = load %struct.sunkbd*, %struct.sunkbd** %10, align 8
  %70 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SUNKBD_CMD_NOCLICK, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @serio_write(i32 %71, i32 %74)
  store i32 0, i32* %5, align 4
  br label %86

76:                                               ; preds = %66
  %77 = load %struct.sunkbd*, %struct.sunkbd** %10, align 8
  %78 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SUNKBD_CMD_BELLOFF, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @serio_write(i32 %79, i32 %82)
  store i32 0, i32* %5, align 4
  br label %86

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %4, %84
  store i32 -1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %76, %68, %14
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.sunkbd* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @serio_write(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
