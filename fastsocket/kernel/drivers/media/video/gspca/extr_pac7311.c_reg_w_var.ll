; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7311.c_reg_w_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7311.c_reg_w_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@USB_BUF_SZ = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Incorrect variable sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32*, i32)* @reg_w_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_var(%struct.gspca_dev* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %63, %4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %11
  br label %64

20:                                               ; preds = %11
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @reg_w_page(%struct.gspca_dev* %21, i32* %22, i32 %23)
  br label %63

25:                                               ; preds = %11
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @USB_BUF_SZ, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @D_ERR, align 4
  %31 = load i32, i32* @D_STREAM, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @PDEBUG(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @reg_w_buf(%struct.gspca_dev* %42, i32 %43, i32* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  br label %62

51:                                               ; preds = %38
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @reg_w_buf(%struct.gspca_dev* %52, i32 %53, i32* %54, i32 8)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 8
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 8
  store i32 %61, i32* %10, align 4
  br label %35

62:                                               ; preds = %41, %35
  br label %63

63:                                               ; preds = %62, %20
  br label %11

64:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @reg_w_page(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
