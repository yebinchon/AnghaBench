; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_sg_tablesize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_sg_tablesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_sg_tablesize(%struct.i2o_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %8 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 %15, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %21 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 3
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %34 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 8, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37, %32
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
