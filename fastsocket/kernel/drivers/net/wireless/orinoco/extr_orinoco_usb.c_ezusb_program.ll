; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }

@MAX_DL_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Programming subblock of length %d to address 0x%08x. Data @ %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i8*, i64, i64)* @ezusb_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_program(%struct.hermes* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hermes*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @MAX_DL_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  br label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @MAX_DL_SIZE, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %68, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30, i8* %35)
  %37 = load %struct.hermes*, %struct.hermes** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @ezusb_program_bytes(%struct.hermes* %37, i8* %42, i64 %43, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %70

49:                                               ; preds = %28
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* @MAX_DL_SIZE, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 %63, %64
  br label %68

66:                                               ; preds = %49
  %67 = load i64, i64* @MAX_DL_SIZE, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i64 [ %65, %60 ], [ %67, %66 ]
  store i64 %69, i64* %10, align 8
  br label %22

70:                                               ; preds = %48, %22
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @pr_debug(i8*, i64, i64, i8*) #1

declare dso_local i32 @ezusb_program_bytes(%struct.hermes*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
