; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.tveeprom = type { i32, i32, i32*, i32 }
%struct.i2c_client = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"cx18 tveeprom tmp\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eeprom PCI ID: %02x%02x:%02x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_read_eeprom(%struct.cx18* %0, %struct.tveeprom* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.tveeprom*, align 8
  %5 = alloca %struct.i2c_client, align 8
  %6 = alloca [256 x i32], align 16
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.tveeprom* %1, %struct.tveeprom** %4, align 8
  %7 = bitcast %struct.i2c_client* %5 to %struct.tveeprom*
  %8 = call i32 @memset(%struct.tveeprom* %7, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strlcpy(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = load %struct.cx18*, %struct.cx18** %3, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  store i32 80, i32* %17, align 8
  %18 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %19 = call i32 @memset(%struct.tveeprom* %18, i32 0, i32 24)
  %20 = bitcast %struct.i2c_client* %5 to %struct.tveeprom*
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %22 = call i64 @tveeprom_read(%struct.tveeprom* %20, i32* %21, i32 1024)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.cx18*, %struct.cx18** %3, align 8
  %27 = getelementptr inbounds %struct.cx18, %struct.cx18* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %51 [
    i32 131, label %31
    i32 129, label %31
    i32 130, label %31
    i32 128, label %36
    i32 132, label %36
  ]

31:                                               ; preds = %25, %25, %25
  %32 = bitcast %struct.i2c_client* %5 to %struct.tveeprom*
  %33 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %35 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %32, %struct.tveeprom* %33, i32* %34)
  br label %57

36:                                               ; preds = %25, %25
  %37 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %38 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %37, i32 0, i32 1
  store i32 1816, i32* %38, align 4
  %39 = load %struct.cx18*, %struct.cx18** %3, align 8
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %41 = call i32 @cx18_eeprom_dump(%struct.cx18* %39, i32* %40, i32 1024)
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 4
  %47 = load i32, i32* %46, align 16
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CX18_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %47, i32 %49)
  br label %57

51:                                               ; preds = %25
  %52 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %53 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.cx18*, %struct.cx18** %3, align 8
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %56 = call i32 @cx18_eeprom_dump(%struct.cx18* %54, i32* %55, i32 1024)
  br label %57

57:                                               ; preds = %24, %51, %36, %31
  ret void
}

declare dso_local i32 @memset(%struct.tveeprom*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @tveeprom_read(%struct.tveeprom*, i32*, i32) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, %struct.tveeprom*, i32*) #1

declare dso_local i32 @cx18_eeprom_dump(%struct.cx18*, i32*, i32) #1

declare dso_local i32 @CX18_INFO(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
