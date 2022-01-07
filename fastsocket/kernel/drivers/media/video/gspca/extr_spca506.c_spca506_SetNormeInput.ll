; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_spca506_SetNormeInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_spca506_SetNormeInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"** Open Set Norme **\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Set Video Byte to 0x%2x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Set Norme: %08x Channel %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @spca506_SetNormeInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spca506_SetNormeInput(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @D_STREAM, align 4
  %14 = call i32 (i32, i8*, ...) @PDEBUG(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %16 = call i32 @spca506_Initi2c(%struct.gspca_dev* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @V4L2_STD_NTSC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 9
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %22
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %8, align 4
  %38 = or i32 72, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @reg_w(i32 %43, i32 8, i32 %44, i32 0)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 15
  %49 = or i32 192, %48
  %50 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %46, i32 %49, i32 2)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @V4L2_STD_NTSC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %56, i32 51, i32 14)
  br label %70

58:                                               ; preds = %36
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @V4L2_STD_SECAM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %65 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %64, i32 83, i32 14)
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %67, i32 3, i32 14)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.sd*, %struct.sd** %7, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.sd*, %struct.sd** %7, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @D_STREAM, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, i8*, ...) @PDEBUG(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @D_STREAM, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, ...) @PDEBUG(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @spca506_Initi2c(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w(i32, i32, i32, i32) #1

declare dso_local i32 @spca506_WriteI2c(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
