; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7302.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7302.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 90, %10
  %12 = add nsw i32 %11, 1999
  %13 = sdiv i32 %12, 2000
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 6, i32* %4, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 63, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 12
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 2
  %31 = sdiv i32 %30, 3
  %32 = mul nsw i32 %31, 3
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 45
  %38 = mul nsw i32 %37, 448
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 1000, %39
  %41 = sdiv i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 448, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @reg_w(%struct.gspca_dev* %44, i32 255, i32 3)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @reg_w(%struct.gspca_dev* %46, i32 2, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @reg_w(%struct.gspca_dev* %49, i32 14, i32 %51)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @reg_w(%struct.gspca_dev* %53, i32 15, i32 %55)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @reg_w(%struct.gspca_dev* %57, i32 17, i32 1)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
