; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_size_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_size_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.raw3270* }
%struct.raw3270 = type { i32, i32, i32, %struct.TYPE_2__* }

@raw3270_init_mutex = common dso_local global i32 0, align 4
@raw3270_init_view = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*)* @raw3270_size_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_size_device(%struct.raw3270* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %3, align 8
  %5 = call i32 @mutex_lock(i32* @raw3270_init_mutex)
  %6 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %7 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %6, i32 0, i32 3
  store %struct.TYPE_2__* @raw3270_init_view, %struct.TYPE_2__** %7, align 8
  %8 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  store %struct.raw3270* %8, %struct.raw3270** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw3270_init_view, i32 0, i32 0), align 8
  %9 = load i64, i64* @MACHINE_IS_VM, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %13 = call i32 @__raw3270_size_device_vm(%struct.raw3270* %12)
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %16 = call i32 @__raw3270_size_device(%struct.raw3270* %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %11
  store %struct.raw3270* null, %struct.raw3270** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw3270_init_view, i32 0, i32 0), align 8
  %18 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %19 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %18, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %19, align 8
  %20 = call i32 @mutex_unlock(i32* @raw3270_init_mutex)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %25 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %27 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %32 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 80
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %37 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30, %23
  %39 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %40 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %45 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 80
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %50 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %49, i32 0, i32 0
  store i32 3, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %43, %38
  %52 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %53 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %58 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 80
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %63 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %62, i32 0, i32 0
  store i32 4, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56, %51
  %65 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %66 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 27
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %71 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 132
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %76 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %75, i32 0, i32 0
  store i32 5, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %69, %64
  br label %85

78:                                               ; preds = %17
  %79 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %80 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %79, i32 0, i32 0
  store i32 2, i32* %80, align 8
  %81 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %82 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %81, i32 0, i32 1
  store i32 24, i32* %82, align 4
  %83 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %84 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %83, i32 0, i32 2
  store i32 80, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__raw3270_size_device_vm(%struct.raw3270*) #1

declare dso_local i32 @__raw3270_size_device(%struct.raw3270*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
