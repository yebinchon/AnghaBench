; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_tea5764_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_tea5764_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tea5764_device = type { %struct.TYPE_2__*, %struct.tea5764_regs }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tea5764_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.tea5764_write_regs = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tea5764_i2c_write(%struct.tea5764_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tea5764_device*, align 8
  %4 = alloca %struct.tea5764_write_regs, align 8
  %5 = alloca %struct.tea5764_regs*, align 8
  %6 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.tea5764_device* %0, %struct.tea5764_device** %3, align 8
  %7 = load %struct.tea5764_device*, %struct.tea5764_device** %3, align 8
  %8 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %7, i32 0, i32 1
  store %struct.tea5764_regs* %8, %struct.tea5764_regs** %5, align 8
  %9 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = load %struct.tea5764_device*, %struct.tea5764_device** %3, align 8
  %12 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 48, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %19 = bitcast %struct.tea5764_write_regs* %4 to i8*
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %18, align 4
  %21 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %22 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %27 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @__cpu_to_be16(i32 %28)
  %30 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %32 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @__cpu_to_be16(i32 %33)
  %35 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 4
  store i8* %34, i8** %35, align 8
  %36 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %37 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__cpu_to_be16(i32 %38)
  %40 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %42 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @__cpu_to_be16(i32 %43)
  %45 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load %struct.tea5764_regs*, %struct.tea5764_regs** %5, align 8
  %47 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @__cpu_to_be16(i32 %48)
  %50 = getelementptr inbounds %struct.tea5764_write_regs, %struct.tea5764_write_regs* %4, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load %struct.tea5764_device*, %struct.tea5764_device** %3, align 8
  %52 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %6, i64 0, i64 0
  %57 = call i32 @i2c_transfer(i32 %55, %struct.i2c_msg* %56, i32 1)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @__cpu_to_be16(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
