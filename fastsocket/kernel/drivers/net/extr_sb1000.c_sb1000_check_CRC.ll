; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_check_CRC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_check_CRC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_check_CRC.Command0 = internal constant [6 x i8] c"\80\1F\00\00\00\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sb1000_check_CRC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_check_CRC(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %12 = call i32 @card_send_command(i32* %9, i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_check_CRC.Command0, i64 0, i64 0), i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %16
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %24
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %32, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
