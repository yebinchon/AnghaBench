; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_get_firmware_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_get_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_get_firmware_version.Command0 = internal constant [6 x i8] c"\80#\00\00\00\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @sb1000_get_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_get_firmware_version(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [7 x i8], align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @sb1000_start_get_set_command(i32* %12, i8* %13)
  store i32 %14, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %50

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 0
  %22 = call i32 @card_send_command(i32* %19, i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_firmware_version.Command0, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %18
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 163
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %50

34:                                               ; preds = %26
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sb1000_end_get_set_command(i32* %46, i8* %47)
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45, %31, %24, %16
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @sb1000_start_get_set_command(i32*, i8*) #1

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sb1000_end_get_set_command(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
