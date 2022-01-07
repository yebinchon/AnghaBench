; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_do_command_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_do_command_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32*)* }

@.str = private unnamed_addr constant [13 x i8] c"%x - failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @do_command_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_command_extended(%struct.cam_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.cam_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [8 x i32], align 16
  %31 = alloca [8 x i32], align 16
  store %struct.cam_data* %0, %struct.cam_data** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %32 = load i32, i32* %16, align 4
  %33 = ashr i32 %32, 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* %16, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %19, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %20, align 4
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 5
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 6
  store i32 8, i32* %46, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 7
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %21, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* %22, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %23, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 2
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %24, align 4
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %25, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  %58 = load i32, i32* %26, align 4
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 5
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %27, align 4
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 6
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %28, align 4
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 7
  store i32 %62, i32* %63, align 4
  %64 = load %struct.cam_data*, %struct.cam_data** %15, align 8
  %65 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %67, align 8
  %69 = load %struct.cam_data*, %struct.cam_data** %15, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 0
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 0
  %74 = call i32 %68(i32 %71, i32* %72, i32* %73)
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %29, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %14
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %14
  %81 = load i32, i32* %29, align 4
  ret i32 %81
}

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
