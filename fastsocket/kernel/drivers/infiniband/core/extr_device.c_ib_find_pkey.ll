; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_ib_find_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_ib_find_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %55, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = call i64 @start_port(%struct.ib_device* %20)
  %22 = sub i64 %19, %21
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %15, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %14
  %27 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ib_query_pkey(%struct.ib_device* %27, i64 %28, i32 %29, i32* %12)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %67

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 32767
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 32767
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %67

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %14

58:                                               ; preds = %14
  %59 = load i32, i32* %13, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %61, %45, %33
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @start_port(%struct.ib_device*) #1

declare dso_local i32 @ib_query_pkey(%struct.ib_device*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
