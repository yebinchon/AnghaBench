; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_cx11646_initsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_cx11646_initsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cx11646_initsize.reg12 = internal constant [5 x i32] [i32 8, i32 5, i32 7, i32 4, i32 36], align 16
@cx11646_initsize.reg17 = internal constant [8 x i32] [i32 10, i32 0, i32 242, i32 1, i32 15, i32 0, i32 151, i32 2], align 16
@cx_inits_640 = common dso_local global i32* null, align 8
@cx_inits_352 = common dso_local global i32* null, align 8
@cx_inits_320 = common dso_local global i32* null, align 8
@cx_inits_176 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx11646_initsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx11646_initsize(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 0, label %16
    i32 1, label %18
    i32 3, label %22
  ]

16:                                               ; preds = %1
  %17 = load i32*, i32** @cx_inits_640, align 8
  store i32* %17, i32** %3, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load i32*, i32** @cx_inits_352, align 8
  store i32* %19, i32** %3, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** @cx_inits_320, align 8
  store i32* %21, i32** %3, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i32*, i32** @cx_inits_176, align 8
  store i32* %23, i32** %3, align 8
  br label %24

24:                                               ; preds = %22, %20, %18, %16
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @reg_w_val(%struct.gspca_dev* %25, i32 154, i32 1)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @reg_w_val(%struct.gspca_dev* %27, i32 16, i32 16)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @reg_w(%struct.gspca_dev* %29, i32 18, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @cx11646_initsize.reg12, i64 0, i64 0), i32 5)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @reg_w(%struct.gspca_dev* %31, i32 23, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @cx11646_initsize.reg17, i64 0, i64 0), i32 8)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @reg_w_val(%struct.gspca_dev* %33, i32 192, i32 0)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @reg_w_val(%struct.gspca_dev* %35, i32 193, i32 4)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @reg_w_val(%struct.gspca_dev* %37, i32 194, i32 4)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @reg_w(%struct.gspca_dev* %39, i32 97, i32* %40, i32 8)
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %3, align 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @reg_w(%struct.gspca_dev* %44, i32 202, i32* %45, i32 8)
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  store i32* %48, i32** %3, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @reg_w(%struct.gspca_dev* %49, i32 210, i32* %50, i32 8)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  store i32* %53, i32** %3, align 8
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @reg_w(%struct.gspca_dev* %54, i32 218, i32* %55, i32 6)
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  store i32* %58, i32** %3, align 8
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @reg_w(%struct.gspca_dev* %59, i32 65, i32* %60, i32 8)
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  store i32* %63, i32** %3, align 8
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @reg_w(%struct.gspca_dev* %64, i32 73, i32* %65, i32 8)
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32* %68, i32** %3, align 8
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @reg_w(%struct.gspca_dev* %69, i32 81, i32* %70, i32 2)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @reg_r(%struct.gspca_dev* %72, i32 16, i32 1)
  ret void
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
