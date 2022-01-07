; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_reset.Command0 = internal constant [6 x i8] c"\80\16\00\00\00\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sb1000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_reset(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 6
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @outb(i32 4, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @inb(i32 %15)
  %17 = call i32 @udelay(i32 1000)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @outb(i32 0, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @inb(i32 %20)
  %22 = call i32 @ssleep(i32 1)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @outb(i32 4, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @inb(i32 %25)
  %27 = call i32 @udelay(i32 1000)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @outb(i32 0, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @inb(i32 %30)
  %32 = call i32 @udelay(i32 0)
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %36 = call i32 @card_send_command(i32* %33, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_reset.Command0, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %2
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 240
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %38
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
