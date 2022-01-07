; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_global_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_global_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @mt9m111_set_global_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_global_gain(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt9m111*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %8)
  store %struct.mt9m111* %9, %struct.mt9m111** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 252
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %18 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 128
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 252
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 4
  %27 = or i32 1536, %26
  store i32 %27, i32* %7, align 4
  br label %41

28:                                               ; preds = %21, %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 64
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 128
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 2
  %37 = or i32 512, %36
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* @GLOBAL_GAIN, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @reg_write(i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
