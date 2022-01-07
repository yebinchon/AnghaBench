; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_get_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_get_frequency.Command0 = internal constant [6 x i8] c"\80D\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @sb1000_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_get_frequency(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @udelay(i32 1000)
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sb1000_start_get_set_command(i32* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %21 = call i32 @card_send_command(i32* %18, i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_frequency.Command0, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %17
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  %34 = shl i32 %33, 8
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 4
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @sb1000_end_get_set_command(i32* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %25, %23, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sb1000_start_get_set_command(i32*, i8*) #1

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sb1000_end_get_set_command(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
