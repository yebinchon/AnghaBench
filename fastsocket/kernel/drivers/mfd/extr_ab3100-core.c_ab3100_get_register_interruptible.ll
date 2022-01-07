; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_get_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_get_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"write error (send register address): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"write error (send register address) %d bytes transferred (expected 1)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"write error (read register): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"write error (read register) %d bytes transferred (expected 1)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab3100_get_register_interruptible(%struct.ab3100* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab3100*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %10 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock_interruptible(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %18 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i2c_master_send(i32 %19, i32* %6, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %25 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %70

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %34 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %70

40:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %44 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @i2c_master_recv(i32 %45, i32* %46, i32 1)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %52 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %70

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %61 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %70

67:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %59, %50, %32, %23
  %71 = load %struct.ab3100*, %struct.ab3100** %5, align 8
  %72 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
