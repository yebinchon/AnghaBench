; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_check_effect_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_check_effect_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_device = type { i32, %struct.file** }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_device*, i32, %struct.file*)* @check_effect_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_effect_access(%struct.ff_device* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ff_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  store %struct.ff_device* %0, %struct.ff_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %13 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %18 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %17, i32 0, i32 1
  %19 = load %struct.file**, %struct.file*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.file*, %struct.file** %19, i64 %21
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = icmp ne %struct.file* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %10, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %33 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %32, i32 0, i32 1
  %34 = load %struct.file**, %struct.file*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.file*, %struct.file** %34, i64 %36
  %38 = load %struct.file*, %struct.file** %37, align 8
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = icmp ne %struct.file* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %31, %28
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
