; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_i2c = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.cx231xx* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.cx231xx_i2c*, %struct.cx231xx_i2c*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.cx231xx = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@cx231xx_adap_template = common dso_local global i32 0, align 4
@cx231xx_algo = common dso_local global i32 0, align 4
@cx231xx_client_template = common dso_local global i32 0, align 4
@i2c_scan = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: i2c bus %d register FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2c_register(%struct.cx231xx_i2c* %0) #0 {
  %2 = alloca %struct.cx231xx_i2c*, align 8
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx_i2c* %0, %struct.cx231xx_i2c** %2, align 8
  %4 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %4, i32 0, i32 5
  %6 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  store %struct.cx231xx* %6, %struct.cx231xx** %3, align 8
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %14, i32 0, i32 3
  %16 = call i32 @memcpy(%struct.TYPE_9__* %15, i32* @cx231xx_adap_template, i32 40)
  %17 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %17, i32 0, i32 4
  %19 = call i32 @memcpy(%struct.TYPE_9__* %18, i32* @cx231xx_algo, i32 40)
  %20 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %20, i32 0, i32 2
  %22 = call i32 @memcpy(%struct.TYPE_9__* %21, i32* @cx231xx_client_template, i32 40)
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %28 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %32 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %35, i32 0, i32 5
  %37 = load %struct.cx231xx*, %struct.cx231xx** %36, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strlcpy(i32 %34, i32 %39, i32 4)
  %41 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %42 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %43 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store %struct.cx231xx_i2c* %41, %struct.cx231xx_i2c** %44, align 8
  %45 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %46 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %47 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store %struct.cx231xx_i2c* %45, %struct.cx231xx_i2c** %48, align 8
  %49 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %49, i32 0, i32 3
  %51 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 1
  %53 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %50, i32* %52)
  %54 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %55 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %54, i32 0, i32 3
  %56 = call i32 @i2c_add_adapter(%struct.TYPE_9__* %55)
  %57 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %58 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %57, i32 0, i32 3
  %59 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %60 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %63 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %1
  %67 = load i64, i64* @i2c_scan, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %71 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %72 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %71, i32 0, i32 2
  %73 = call i32 @cx231xx_do_i2c_scan(%struct.cx231xx* %70, %struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %69, %66
  br label %83

75:                                               ; preds = %1
  %76 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %80 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @cx231xx_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %75, %74
  %84 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %85 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  ret i32 %87
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @cx231xx_do_i2c_scan(%struct.cx231xx*, %struct.TYPE_9__*) #1

declare dso_local i32 @cx231xx_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
