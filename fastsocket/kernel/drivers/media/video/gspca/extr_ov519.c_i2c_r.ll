; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_i2c_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i64)* @i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_r(%struct.sd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 134, label %25
    i32 133, label %25
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 129, label %33
    i32 128, label %37
  ]

25:                                               ; preds = %21, %21
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ov511_i2c_r(%struct.sd* %26, i64 %27)
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %21, %21, %21
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ov518_i2c_r(%struct.sd* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ovfx2_i2c_r(%struct.sd* %34, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @w9968cf_i2c_r(%struct.sd* %38, i64 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %21, %37, %33, %29, %25
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ov511_i2c_r(%struct.sd*, i64) #1

declare dso_local i32 @ov518_i2c_r(%struct.sd*, i64) #1

declare dso_local i32 @ovfx2_i2c_r(%struct.sd*, i64) #1

declare dso_local i32 @w9968cf_i2c_r(%struct.sd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
