; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_upload_quantizationtables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_upload_quantizationtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9968cf_device = type { i32 }

@Y_QUANTABLE = common dso_local global i32* null, align 8
@UV_QUANTABLE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9968cf_device*)* @w9968cf_upload_quantizationtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9968cf_upload_quantizationtables(%struct.w9968cf_device* %0) #0 {
  %2 = alloca %struct.w9968cf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w9968cf_device* %0, %struct.w9968cf_device** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %9 = call i64 @w9968cf_write_reg(%struct.w9968cf_device* %8, i32 16, i32 57)
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %62, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load i32*, i32** @Y_QUANTABLE, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @Y_QUANTABLE, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %22, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32*, i32** @UV_QUANTABLE, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @UV_QUANTABLE, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %35, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 64, %46
  %48 = call i64 @w9968cf_write_reg(%struct.w9968cf_device* %44, i32 %45, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 96, %55
  %57 = call i64 @w9968cf_write_reg(%struct.w9968cf_device* %53, i32 %54, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %17
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %7, align 4
  br label %14

67:                                               ; preds = %14
  %68 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %69 = call i64 @w9968cf_write_reg(%struct.w9968cf_device* %68, i32 18, i32 57)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @w9968cf_write_reg(%struct.w9968cf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
