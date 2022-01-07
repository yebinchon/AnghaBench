; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7302.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7302.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@setcolors.a = internal constant [9 x i32] [i32 217, i32 -212, i32 0, i32 -101, i32 170, i32 -67, i32 -38, i32 -315, i32 355], align 16
@setcolors.b = internal constant [9 x i32] [i32 19, i32 106, i32 0, i32 19, i32 106, i32 1, i32 19, i32 106, i32 1], align 16
@COLOR_MAX = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"color: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @reg_w(%struct.gspca_dev* %8, i32 255, i32 3)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 17, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 255, i32 0)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %48, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* @setcolors.a, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32, i32* @COLOR_MAX, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* @setcolors.b, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 15, %35
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 7
  %40 = call i32 @reg_w(%struct.gspca_dev* %33, i32 %36, i32 %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 15, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @reg_w(%struct.gspca_dev* %41, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %17
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @reg_w(%struct.gspca_dev* %52, i32 220, i32 1)
  %54 = load i32, i32* @D_CONF, align 4
  %55 = load i32, i32* @D_STREAM, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PDEBUG(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
