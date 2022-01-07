; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_writeb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_client = type { i32, i8, %struct.bbc_i2c_bus* }
%struct.bbc_i2c_bus = type { i32*, i32* }

@I2C_PCF_START = common dso_local global i8 0, align 1
@I2C_PCF_LRB = common dso_local global i32 0, align 4
@I2C_PCF_STOP = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbc_i2c_writeb(%struct.bbc_i2c_client* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_client*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_i2c_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bbc_i2c_client* %0, %struct.bbc_i2c_client** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %11, i32 0, i32 2
  %13 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %12, align 8
  store %struct.bbc_i2c_bus* %13, %struct.bbc_i2c_bus** %7, align 8
  %14 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %17 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 4
  %25 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %26 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @writeb(i8 zeroext %24, i32* %27)
  br label %29

29:                                               ; preds = %21, %3
  %30 = load i32, i32* %8, align 4
  %31 = trunc i32 %30 to i8
  %32 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %33 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = call i32 @writeb(i8 zeroext %31, i32* %35)
  %37 = load i8, i8* @I2C_PCF_START, align 1
  %38 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %39 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @writeb(i8 zeroext %37, i32* %41)
  %43 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %44 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %43, i32* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %76

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = trunc i32 %48 to i8
  %50 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %51 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @writeb(i8 zeroext %49, i32* %53)
  %55 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %56 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %55, i32* %9)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @I2C_PCF_LRB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %47
  br label %76

64:                                               ; preds = %58
  %65 = load i8, i8* %5, align 1
  %66 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %67 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @writeb(i8 zeroext %65, i32* %69)
  %71 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %72 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %71, i32* %9)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %76

75:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %74, %63, %46
  %77 = load i8, i8* @I2C_PCF_STOP, align 1
  %78 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %79 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @writeb(i8 zeroext %77, i32* %81)
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i64 @wait_for_pin(%struct.bbc_i2c_bus*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
