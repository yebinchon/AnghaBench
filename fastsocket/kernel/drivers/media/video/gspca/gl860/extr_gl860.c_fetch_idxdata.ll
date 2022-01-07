; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_fetch_idxdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_fetch_idxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.idxdata = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"\FF\FF\FF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_idxdata(%struct.gspca_dev* %0, %struct.idxdata* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.idxdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.idxdata* %1, %struct.idxdata** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.idxdata*, %struct.idxdata** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %13, i64 %15
  %17 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @memcmp(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %23 = load %struct.idxdata*, %struct.idxdata** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %23, i64 %25
  %27 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.idxdata*, %struct.idxdata** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %29, i64 %31
  %33 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ctrl_out(%struct.gspca_dev* %22, i32 64, i32 3, i32 31232, i32 %28, i32 3, i32 %34)
  br label %44

36:                                               ; preds = %12
  %37 = load %struct.idxdata*, %struct.idxdata** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %37, i64 %39
  %41 = getelementptr inbounds %struct.idxdata, %struct.idxdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @msleep(i32 %42)
  br label %44

44:                                               ; preds = %36, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
