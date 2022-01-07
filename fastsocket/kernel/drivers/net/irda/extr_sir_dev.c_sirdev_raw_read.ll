; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_raw_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sir_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sirdev_raw_read(%struct.sir_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sir_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sir_dev* %0, %struct.sir_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %10 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %19 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %27 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %37 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i8* %35, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %44 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.sir_dev*, %struct.sir_dev** %5, align 8
  %50 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %34, %30
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
