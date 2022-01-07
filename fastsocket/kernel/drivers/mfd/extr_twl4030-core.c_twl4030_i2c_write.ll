; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_i2c_write.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_i2c_write(i64 %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.twl4030_client*, align 8
  %13 = alloca %struct.i2c_msg*, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @TWL4030_MODULE_LAST, align 8
  %16 = icmp ugt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @DRIVER_NAME, align 4
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %96

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twl4030_map, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %33, i64 %35
  store %struct.twl4030_client* %36, %struct.twl4030_client** %12, align 8
  %37 = load i32, i32* @inuse, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load i32, i32* @DRIVER_NAME, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %96

49:                                               ; preds = %27
  %50 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %51 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %54 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %53, i32 0, i32 1
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %54, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i64 0
  store %struct.i2c_msg* %56, %struct.i2c_msg** %13, align 8
  %57 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %58 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 1
  store i64* %68, i64** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twl4030_map, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  %79 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %80 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %85 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %84, i32 0, i32 1
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %85, align 8
  %87 = call i32 @i2c_transfer(i32 %83, %struct.i2c_msg* %86, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.twl4030_client*, %struct.twl4030_client** %12, align 8
  %89 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %49
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %43, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
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
