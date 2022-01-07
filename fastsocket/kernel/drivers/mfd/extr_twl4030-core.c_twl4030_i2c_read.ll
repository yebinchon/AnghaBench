; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.twl4030_client = type { i32, %struct.i2c_msg*, %struct.TYPE_3__*, i32 }
%struct.i2c_msg = type { i32, i64*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@TWL4030_MODULE_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s: invalid module number %d\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@twl4030_map = common dso_local global %struct.TYPE_4__* null, align 8
@twl4030_modules = common dso_local global %struct.twl4030_client* null, align 8
@inuse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: client %d is not initialized\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_i2c_read(i64 %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.twl4030_client*, align 8
  %14 = alloca %struct.i2c_msg*, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @TWL4030_MODULE_LAST, align 8
  %17 = icmp ugt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @DRIVER_NAME, align 4
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %111

28:                                               ; preds = %4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twl4030_map, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %34, i64 %36
  store %struct.twl4030_client* %37, %struct.twl4030_client** %13, align 8
  %38 = load i32, i32* @inuse, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load i32, i32* @DRIVER_NAME, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %111

50:                                               ; preds = %28
  %51 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %52 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %55 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %54, i32 0, i32 1
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %55, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 0
  store %struct.i2c_msg* %57, %struct.i2c_msg** %14, align 8
  %58 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %59 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twl4030_map, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %11, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 1
  store i64* %11, i64** %75, align 8
  %76 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %77 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %76, i32 0, i32 1
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %77, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i64 1
  store %struct.i2c_msg* %79, %struct.i2c_msg** %14, align 8
  %80 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %81 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* @I2C_M_RD, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 1
  store i64* %91, i64** %93, align 8
  %94 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %95 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %100 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %99, i32 0, i32 1
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %100, align 8
  %102 = call i32 @i2c_transfer(i32 %98, %struct.i2c_msg* %101, i32 2)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.twl4030_client*, %struct.twl4030_client** %13, align 8
  %104 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %50
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %44, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
