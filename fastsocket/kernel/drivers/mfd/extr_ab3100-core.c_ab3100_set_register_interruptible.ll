; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_set_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_set_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"write error (write register): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"write error (write register) %d bytes transferred (expected 2)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab3100_set_register_interruptible(%struct.ab3100* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab3100*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %15 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %23 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %26 = call i32 @i2c_master_send(i32 %24, i32* %25, i32 2)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %31 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %48

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %40 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %50 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
