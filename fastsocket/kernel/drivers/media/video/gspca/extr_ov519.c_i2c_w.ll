; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_i2c_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i64, i64)* @i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w(%struct.sd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %66

16:                                               ; preds = %3
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %40 [
    i32 134, label %20
    i32 133, label %20
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %30
    i32 128, label %35
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @ov511_i2c_w(%struct.sd* %21, i64 %22, i64 %23)
  br label %40

25:                                               ; preds = %16, %16, %16
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ov518_i2c_w(%struct.sd* %26, i64 %27, i64 %28)
  br label %40

30:                                               ; preds = %16
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ovfx2_i2c_w(%struct.sd* %31, i64 %32, i64 %33)
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @w9968cf_i2c_w(%struct.sd* %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %16, %35, %30, %25, %20
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 18
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, 128
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.sd*, %struct.sd** %4, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @memset(i64* %56, i32 -1, i32 8)
  br label %65

58:                                               ; preds = %49, %46
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %15, %65, %40
  ret void
}

declare dso_local i32 @ov511_i2c_w(%struct.sd*, i64, i64) #1

declare dso_local i32 @ov518_i2c_w(%struct.sd*, i64, i64) #1

declare dso_local i32 @ovfx2_i2c_w(%struct.sd*, i64, i64) #1

declare dso_local i32 @w9968cf_i2c_w(%struct.sd*, i64, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
