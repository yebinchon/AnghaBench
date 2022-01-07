; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_user.c_generic_window_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_user.c_generic_window_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i16, i16 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_window_size(i32 %0, i8* %1, i16* %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca %struct.winsize, align 2
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i16* %2, i16** %8, align 8
  store i16* %3, i16** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TIOCGWINSZ, align 4
  %14 = call i64 @ioctl(i32 %12, i32 %13, %struct.winsize* %10)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @errno, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load i16*, i16** %8, align 8
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i32 0, i32 0
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load i16*, i16** %9, align 8
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i32 0, i32 1
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %30, %33
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi i1 [ true, %19 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i32 0, i32 0
  %39 = load i16, i16* %38, align 2
  %40 = load i16*, i16** %8, align 8
  store i16 %39, i16* %40, align 2
  %41 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i32 0, i32 1
  %42 = load i16, i16* %41, align 2
  %43 = load i16*, i16** %9, align 8
  store i16 %42, i16* %43, align 2
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
