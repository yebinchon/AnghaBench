; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.ubd = type { i64, i32, i32* }

@ubd_gendisk = common dso_local global %struct.gendisk** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ubd_lock = common dso_local global i32 0, align 4
@ubd_devs = common dso_local global %struct.ubd* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@fake_gendisk = common dso_local global %struct.gendisk** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ubd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_remove(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.ubd*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.gendisk**, %struct.gendisk*** @ubd_gendisk, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %8, i64 %10
  %12 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  store %struct.gendisk* %12, %struct.gendisk** %5, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = call i32 @mutex_lock(i32* @ubd_lock)
  %16 = load %struct.ubd*, %struct.ubd** @ubd_devs, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ubd, %struct.ubd* %16, i64 %18
  store %struct.ubd* %19, %struct.ubd** %6, align 8
  %20 = load %struct.ubd*, %struct.ubd** %6, align 8
  %21 = getelementptr inbounds %struct.ubd, %struct.ubd* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %73

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ubd*, %struct.ubd** %6, align 8
  %29 = getelementptr inbounds %struct.ubd, %struct.ubd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %73

33:                                               ; preds = %25
  %34 = load %struct.gendisk**, %struct.gendisk*** @ubd_gendisk, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %34, i64 %36
  store %struct.gendisk* null, %struct.gendisk** %37, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %39 = icmp ne %struct.gendisk* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %42 = call i32 @del_gendisk(%struct.gendisk* %41)
  %43 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %44 = call i32 @put_disk(%struct.gendisk* %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.gendisk**, %struct.gendisk*** @fake_gendisk, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %46, i64 %48
  %50 = load %struct.gendisk*, %struct.gendisk** %49, align 8
  %51 = icmp ne %struct.gendisk* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load %struct.gendisk**, %struct.gendisk*** @fake_gendisk, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %53, i64 %55
  %57 = load %struct.gendisk*, %struct.gendisk** %56, align 8
  %58 = call i32 @del_gendisk(%struct.gendisk* %57)
  %59 = load %struct.gendisk**, %struct.gendisk*** @fake_gendisk, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %59, i64 %61
  %63 = load %struct.gendisk*, %struct.gendisk** %62, align 8
  %64 = call i32 @put_disk(%struct.gendisk* %63)
  %65 = load %struct.gendisk**, %struct.gendisk*** @fake_gendisk, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %65, i64 %67
  store %struct.gendisk* null, %struct.gendisk** %68, align 8
  br label %69

69:                                               ; preds = %52, %45
  store i32 0, i32* %7, align 4
  %70 = load %struct.ubd*, %struct.ubd** %6, align 8
  %71 = getelementptr inbounds %struct.ubd, %struct.ubd* %70, i32 0, i32 1
  %72 = call i32 @platform_device_unregister(i32* %71)
  br label %73

73:                                               ; preds = %69, %32, %24
  %74 = call i32 @mutex_unlock(i32* @ubd_lock)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @platform_device_unregister(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
