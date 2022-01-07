; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Scaling factor: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, i32)* @sn9c102_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_set_scale(%struct.sn9c102_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %12 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 24
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 207
  store i32 %16, i32* %6, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %22 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 24
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 207
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %34 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 24
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %29
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %10
  %42 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %42, i32 %43, i32 24)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @PDBGG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @PDBGG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
