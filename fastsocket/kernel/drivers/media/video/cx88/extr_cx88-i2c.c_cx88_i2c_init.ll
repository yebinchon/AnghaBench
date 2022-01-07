; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-i2c.c_cx88_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-i2c.c_cx88_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.cx88_core = type { i8*, i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.cx88_core* }
%struct.pci_dev = type { i32 }

@i2c_udelay = common dso_local global i32 0, align 4
@cx8800_i2c_algo_template = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cx88xx internal\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@cx88_i2c_init.tuner_data = internal global [4 x i32] [i32 11, i32 220, i32 134, i32 82], align 16
@cx88_i2c_init.tuner_msg = internal global %struct.i2c_msg { i32 97, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cx88_i2c_init.tuner_data, i32 0, i32 0), i32 4, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"i2c register ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"%s: i2c init: enabling analog demod on HVR1300/3000/4000 tuner\0A\00", align 1
@i2c_scan = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: i2c register FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_i2c_init(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load i32, i32* @i2c_udelay, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 5, i32* @i2c_udelay, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 5
  %11 = call i32 @memcpy(%struct.TYPE_8__* %10, i32* @cx8800_i2c_algo_template, i32 16)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %15 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* %13, i32** %17, align 8
  %18 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlcpy(i32 %21, i8* %24, i32 4)
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @i2c_udelay, align 4
  %31 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %35 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store %struct.cx88_core* %34, %struct.cx88_core** %37, align 8
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 6
  %42 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %39, i32* %41)
  %43 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %44 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %43, i32 0, i32 5
  %45 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %46 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 4
  %50 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %51 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %54 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_NAME_SIZE, align 4
  %58 = call i32 @strlcpy(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %60 = call i32 @cx8800_bit_setscl(%struct.cx88_core* %59, i32 1)
  %61 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %62 = call i32 @cx8800_bit_setsda(%struct.cx88_core* %61, i32 1)
  %63 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %64 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %63, i32 0, i32 4
  %65 = call i64 @i2c_bit_add_bus(%struct.TYPE_9__* %64)
  %66 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %67 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %69 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 0, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %8
  %73 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %75 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %87 [
    i32 130, label %77
    i32 129, label %77
    i32 128, label %77
  ]

77:                                               ; preds = %72, %72, %72
  %78 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %79 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %83 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i32 @i2c_transfer(%struct.TYPE_9__* %85, %struct.i2c_msg* @cx88_i2c_init.tuner_msg, i32 1)
  br label %88

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i64, i64* @i2c_scan, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %93 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %96 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %95, i32 0, i32 3
  %97 = call i32 @do_i2c_scan(i8* %94, %struct.TYPE_10__* %96)
  br label %98

98:                                               ; preds = %91, %88
  br label %104

99:                                               ; preds = %8
  %100 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %101 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %98
  %105 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %106 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cx8800_bit_setscl(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx8800_bit_setsda(%struct.cx88_core*, i32) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i32 @i2c_transfer(%struct.TYPE_9__*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @do_i2c_scan(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
