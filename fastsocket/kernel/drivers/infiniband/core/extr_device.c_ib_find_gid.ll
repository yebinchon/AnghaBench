; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_ib_find_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_ib_find_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32* }
%union.ib_gid = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_gid(%struct.ib_device* %0, %union.ib_gid* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.ib_gid, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %union.ib_gid* %1, %union.ib_gid** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call i32 @start_port(%struct.ib_device* %14)
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %62, %4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call i32 @end_port(%struct.ib_device* %18)
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %29 = call i32 @start_port(%struct.ib_device* %28)
  %30 = sub nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %23, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %22
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ib_query_gid(%struct.ib_device* %36, i32 %37, i32 %38, %union.ib_gid* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %68

44:                                               ; preds = %35
  %45 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %46 = call i32 @memcmp(%union.ib_gid* %10, %union.ib_gid* %45, i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  store i32 0, i32* %5, align 4
  br label %68

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %22

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %56, %42
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @start_port(%struct.ib_device*) #1

declare dso_local i32 @end_port(%struct.ib_device*) #1

declare dso_local i32 @ib_query_gid(%struct.ib_device*, i32, i32, %union.ib_gid*) #1

declare dso_local i32 @memcmp(%union.ib_gid*, %union.ib_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
