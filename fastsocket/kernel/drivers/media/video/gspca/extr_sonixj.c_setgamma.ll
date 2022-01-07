; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setgamma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setgamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@setgamma.delta = internal constant [17 x i32] [i32 0, i32 20, i32 28, i32 28, i32 28, i32 28, i32 27, i32 26, i32 24, i32 19, i32 16, i32 14, i32 8, i32 7, i32 4, i32 2, i32 0], align 16
@gamma_spec_0 = common dso_local global i32* null, align 8
@gamma_spec_1 = common dso_local global i32* null, align 8
@gamma_spec_2 = common dso_local global i32* null, align 8
@gamma_spec_3 = common dso_local global i32* null, align 8
@gamma_def = common dso_local global i32* null, align 8
@GAMMA = common dso_local global i64 0, align 8
@GAMMA_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setgamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgamma(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [17 x i32], align 16
  %7 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %21 [
    i32 133, label %13
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 132, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %1
  %14 = load i32*, i32** @gamma_spec_0, align 8
  store i32* %14, i32** %7, align 8
  br label %23

15:                                               ; preds = %1, %1, %1
  %16 = load i32*, i32** @gamma_spec_1, align 8
  store i32* %16, i32** %7, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load i32*, i32** @gamma_spec_2, align 8
  store i32* %18, i32** %7, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load i32*, i32** @gamma_spec_3, align 8
  store i32* %20, i32** %7, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i32*, i32** @gamma_def, align 8
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @GAMMA, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %54, %23
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 68
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [17 x i32], [17 x i32]* @setgamma.delta, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GAMMA_DEF, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %44, %47
  %49 = sdiv i32 %48, 32
  %50 = add nsw i32 %40, %49
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %60 = call i32 @reg_w(%struct.gspca_dev* %58, i32 32, i32* %59, i32 68)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
