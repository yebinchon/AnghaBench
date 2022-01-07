; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_battey_apply_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_battey_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }
%struct.chg_map = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid %s %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Set %s of %d%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*, %struct.chg_map*, i32, i32, i32*, i8*, i8*)* @wm831x_battey_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_battey_apply_config(%struct.wm831x* %0, %struct.chg_map* %1, i32 %2, i32 %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca %struct.chg_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %8, align 8
  store %struct.chg_map* %1, %struct.chg_map** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %31, %7
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.chg_map*, %struct.chg_map** %9, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.chg_map, %struct.chg_map* %22, i64 %24
  %26 = getelementptr inbounds %struct.chg_map, %struct.chg_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  br label %16

34:                                               ; preds = %29, %16
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %40 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43, i8* %44)
  br label %63

46:                                               ; preds = %34
  %47 = load %struct.chg_map*, %struct.chg_map** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.chg_map, %struct.chg_map* %47, i64 %49
  %51 = getelementptr inbounds %struct.chg_map, %struct.chg_map* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %57 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %46, %38
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
