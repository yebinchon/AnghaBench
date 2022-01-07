; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sn9c2028_long_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sn9c2028_long_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"long command status read error %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32*)* @sn9c2028_long_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c2028_long_command(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @sn9c2028_command(%struct.gspca_dev* %9, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = call i32 @sn9c2028_read1(%struct.gspca_dev* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %17

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %31
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %51 = call i32 @sn9c2028_read4(%struct.gspca_dev* %49, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %46
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %58 = call i32 @sn9c2028_read1(%struct.gspca_dev* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %54, %44, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @sn9c2028_command(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @sn9c2028_read1(%struct.gspca_dev*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sn9c2028_read4(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
