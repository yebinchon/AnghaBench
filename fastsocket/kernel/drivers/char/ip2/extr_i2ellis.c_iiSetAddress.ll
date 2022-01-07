; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiSetAddress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiSetAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@I2E_INCOMPLETE = common dso_local global i32 0, align 4
@I2EE_BADADDR = common dso_local global i32 0, align 4
@FIFO_DATA = common dso_local global i64 0, align 8
@FIFO_STATUS = common dso_local global i64 0, align 8
@FIFO_PTR = common dso_local global i64 0, align 8
@FIFO_MAIL = common dso_local global i64 0, align 8
@FIFO_MASK = common dso_local global i64 0, align 8
@FIFO_NOP = common dso_local global i64 0, align 8
@ii2Safe = common dso_local global i64 0, align 8
@ii2Nop = common dso_local global i64 0, align 8
@I2E_MAGIC = common dso_local global i32 0, align 4
@II_STATE_COLD = common dso_local global i32 0, align 4
@I2EE_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64)* @iiSetAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iiSetAddress(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @I2E_INCOMPLETE, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ule i32 %11, 256
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp uge i32 %14, 65528
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %13, %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load i32, i32* @I2EE_BADADDR, align 4
  %23 = call i32 @I2_COMPLETE(%struct.TYPE_4__* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @FIFO_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @FIFO_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @FIFO_PTR, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @FIFO_MAIL, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @FIFO_MASK, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @FIFO_NOP, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* @ii2Safe, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %24
  %65 = load i64, i64* %7, align 8
  br label %68

66:                                               ; preds = %24
  %67 = load i64, i64* @ii2Nop, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @I2E_MAGIC, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @II_STATE_COLD, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i32, i32* @I2EE_GOOD, align 4
  %80 = call i32 @I2_COMPLETE(%struct.TYPE_4__* %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @I2_COMPLETE(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
