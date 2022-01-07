; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_find_free_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_find_free_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ipath_user_info = type { i32 }
%struct.ipath_devdata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, %struct.ipath_user_info*)* @find_free_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_port(i32 %0, %struct.file* %1, %struct.ipath_user_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ipath_user_info*, align 8
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.ipath_user_info* %2, %struct.ipath_user_info** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ipath_devdata* @ipath_lookup(i32 %10)
  store %struct.ipath_devdata* %11, %struct.ipath_devdata** %7, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %13 = icmp ne %struct.ipath_devdata* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %19 = call i32 @usable(%struct.ipath_devdata* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %49

24:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %36 = call i32 @try_alloc_port(%struct.ipath_devdata* %32, i32 %33, %struct.file* %34, %struct.ipath_user_info* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %49

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %41, %21, %14
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.ipath_devdata* @ipath_lookup(i32) #1

declare dso_local i32 @usable(%struct.ipath_devdata*) #1

declare dso_local i32 @try_alloc_port(%struct.ipath_devdata*, i32, %struct.file*, %struct.ipath_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
