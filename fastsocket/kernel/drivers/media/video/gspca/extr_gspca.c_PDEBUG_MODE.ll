; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_PDEBUG_MODE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_PDEBUG_MODE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_CONF = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s %c%c%c%c %dx%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s 0x%08x %dx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @PDEBUG_MODE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PDEBUG_MODE(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = ashr i32 %9, 24
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 24
  %15 = icmp sle i32 %14, 122
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* @D_CONF, align 4
  %18 = load i32, i32* @D_STREAM, align 4
  %19 = or i32 %17, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @PDEBUG(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22, i32 %25, i32 %28, i32 %30, i32 %31, i32 %32)
  br label %43

34:                                               ; preds = %12, %4
  %35 = load i32, i32* @D_CONF, align 4
  %36 = load i32, i32* @D_STREAM, align 4
  %37 = or i32 %35, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @PDEBUG(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %16
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
