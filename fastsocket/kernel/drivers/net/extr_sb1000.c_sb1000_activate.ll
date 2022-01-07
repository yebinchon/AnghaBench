; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_activate.Command0 = internal constant [6 x i8] c"\80\11\00\00\00\00", align 1
@sb1000_activate.Command1 = internal constant [6 x i8] c"\80\16\00\00\00\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sb1000_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_activate(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @ssleep(i32 1)
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %12 = call i32 @card_send_command(i32* %9, i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_activate.Command0, i64 0, i64 0), i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %20 = call i32 @card_send_command(i32* %17, i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_activate.Command1, i64 0, i64 0), i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %16
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 241
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @sb1000_start_get_set_command(i32* %30, i8* %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %24
  %40 = call i32 @udelay(i32 1000)
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sb1000_start_get_set_command(i32* %41, i8* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %36, %34, %22, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sb1000_start_get_set_command(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
