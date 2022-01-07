; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.gspca_ctrl*, %struct.TYPE_4__* }
%struct.gspca_ctrl = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @gspca_set_default_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gspca_set_default_mode(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.gspca_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %48, align 8
  store %struct.gspca_ctrl* %49, %struct.gspca_ctrl** %3, align 8
  %50 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %3, align 8
  %51 = icmp ne %struct.gspca_ctrl* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %70, i32 1
  store %struct.gspca_ctrl* %71, %struct.gspca_ctrl** %3, align 8
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
