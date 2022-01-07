; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_readb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_client = type { i8, i8, %struct.bbc_i2c_bus* }
%struct.bbc_i2c_bus = type { i32*, i32* }

@I2C_PCF_START = common dso_local global i8 0, align 1
@I2C_PCF_LRB = common dso_local global i8 0, align 1
@I2C_PCF_STOP = common dso_local global i8 0, align 1
@I2C_PCF_ESO = common dso_local global i8 0, align 1
@I2C_PCF_ENI = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbc_i2c_readb(%struct.bbc_i2c_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_i2c_bus*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.bbc_i2c_client* %0, %struct.bbc_i2c_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %11, i32 0, i32 2
  %13 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %12, align 8
  store %struct.bbc_i2c_bus* %13, %struct.bbc_i2c_bus** %7, align 8
  %14 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  store i8 %16, i8* %8, align 1
  store i32 -1, i32* %10, align 4
  %17 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %26 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @writeb(i8 zeroext %24, i32* %27)
  br label %29

29:                                               ; preds = %21, %3
  %30 = load i8, i8* %8, align 1
  %31 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %32 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @writeb(i8 zeroext %30, i32* %34)
  %36 = load i8, i8* @I2C_PCF_START, align 1
  %37 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %38 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @writeb(i8 zeroext %36, i32* %40)
  %42 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %43 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %42, i8* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %125

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = trunc i32 %47 to i8
  %49 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %50 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @writeb(i8 zeroext %48, i32* %52)
  %54 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %55 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %54, i8* %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %46
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @I2C_PCF_LRB, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %46
  br label %125

65:                                               ; preds = %57
  %66 = load i8, i8* @I2C_PCF_STOP, align 1
  %67 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %68 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @writeb(i8 zeroext %66, i32* %70)
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, 1
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %8, align 1
  %76 = load i8, i8* %8, align 1
  %77 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %78 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @writeb(i8 zeroext %76, i32* %80)
  %82 = load i8, i8* @I2C_PCF_START, align 1
  %83 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %84 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @writeb(i8 zeroext %82, i32* %86)
  %88 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %89 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %88, i8* %9)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %65
  br label %125

92:                                               ; preds = %65
  %93 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %94 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = call zeroext i8 @readb(i32* %96)
  %98 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %99 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %98, i8* %9)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %125

102:                                              ; preds = %92
  %103 = load i8, i8* @I2C_PCF_ESO, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @I2C_PCF_ENI, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %104, %106
  %108 = trunc i32 %107 to i8
  %109 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %110 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = call i32 @writeb(i8 zeroext %108, i32* %112)
  %114 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %115 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = call zeroext i8 @readb(i32* %117)
  %119 = load i8*, i8** %5, align 8
  store i8 %118, i8* %119, align 1
  %120 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %121 = call i64 @wait_for_pin(%struct.bbc_i2c_bus* %120, i8* %9)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %102
  br label %125

124:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %123, %101, %91, %64, %45
  %126 = load i8, i8* @I2C_PCF_STOP, align 1
  %127 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %128 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @writeb(i8 zeroext %126, i32* %130)
  %132 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %7, align 8
  %133 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = call zeroext i8 @readb(i32* %135)
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i64 @wait_for_pin(%struct.bbc_i2c_bus*, i8*) #1

declare dso_local zeroext i8 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
