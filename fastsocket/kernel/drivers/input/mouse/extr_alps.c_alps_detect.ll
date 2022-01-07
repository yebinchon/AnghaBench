; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32 }
%struct.alps_data = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DualPoint TouchPad\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GlidePoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alps_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alps_data, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %8 = call i64 @alps_identify(%struct.psmouse* %7, %struct.alps_data* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ALPS_DUALPOINT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %14, %11
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @alps_identify(%struct.psmouse*, %struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
