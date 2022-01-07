; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_core.c_pnp_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_core.c_pnp_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i64, %struct.TYPE_2__*, i32, %struct.pnp_id*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pnp_id = type { i32, %struct.pnp_id* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s device, IDs%s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_add_device(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %17 = call i32 @__pnp_add_device(%struct.pnp_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %68

22:                                               ; preds = %15
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 3
  %26 = load %struct.pnp_id*, %struct.pnp_id** %25, align 8
  store %struct.pnp_id* %26, %struct.pnp_id** %7, align 8
  br label %27

27:                                               ; preds = %47, %22
  %28 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %29 = icmp ne %struct.pnp_id* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 128, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %40 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @scnprintf(i8* %34, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %30
  %48 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %49 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %48, i32 0, i32 1
  %50 = load %struct.pnp_id*, %struct.pnp_id** %49, align 8
  store %struct.pnp_id* %50, %struct.pnp_id** %7, align 8
  br label %27

51:                                               ; preds = %27
  %52 = load i32, i32* @KERN_DEBUG, align 4
  %53 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %53, i32 0, i32 2
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %61 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %67 = call i32 @dev_printk(i32 %52, i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %60, i8* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %51, %20, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @__pnp_add_device(%struct.pnp_dev*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
