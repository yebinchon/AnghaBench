; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_receive_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.mkiss = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AXF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @mkiss_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkiss_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mkiss*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = call %struct.mkiss* @mkiss_get(%struct.tty_struct* %10)
  store %struct.mkiss* %11, %struct.mkiss** %9, align 8
  %12 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %13 = icmp ne %struct.mkiss* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %72

15:                                               ; preds = %4
  %16 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %17 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %20 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 73
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %28 = call i32 @ax_changedmtu(%struct.mkiss* %27)
  br label %29

29:                                               ; preds = %26, %15
  br label %30

30:                                               ; preds = %60, %57, %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* @AXF_ERROR, align 4
  %45 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %46 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %45, i32 0, i32 2
  %47 = call i32 @test_and_set_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %51 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %49, %43
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %30

60:                                               ; preds = %37, %34
  %61 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 @kiss_unesc(%struct.mkiss* %61, i32 %65)
  br label %30

67:                                               ; preds = %30
  %68 = load %struct.mkiss*, %struct.mkiss** %9, align 8
  %69 = call i32 @mkiss_put(%struct.mkiss* %68)
  %70 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %71 = call i32 @tty_unthrottle(%struct.tty_struct* %70)
  br label %72

72:                                               ; preds = %67, %14
  ret void
}

declare dso_local %struct.mkiss* @mkiss_get(%struct.tty_struct*) #1

declare dso_local i32 @ax_changedmtu(%struct.mkiss*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @kiss_unesc(%struct.mkiss*, i32) #1

declare dso_local i32 @mkiss_put(%struct.mkiss*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
