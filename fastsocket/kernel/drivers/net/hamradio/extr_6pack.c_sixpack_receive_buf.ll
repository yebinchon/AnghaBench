; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_receive_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.sixpack = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SIXPF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @sixpack_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixpack_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sixpack*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %75

15:                                               ; preds = %4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = call %struct.sixpack* @sp_get(%struct.tty_struct* %16)
  store %struct.sixpack* %17, %struct.sixpack** %9, align 8
  %18 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %19 = icmp ne %struct.sixpack* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %75

21:                                               ; preds = %15
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 512
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i64 [ %29, %27 ], [ 512, %30 ]
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i8* %22, i8* %23, i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %65, %64, %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32, i32* @SIXPF_ERROR, align 4
  %52 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %53 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %52, i32 0, i32 1
  %54 = call i32 @test_and_set_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %58 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %50
  br label %36

65:                                               ; preds = %44, %39
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sixpack_decode(%struct.sixpack* %67, i8* %68, i32 %69)
  %71 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %72 = call i32 @sp_put(%struct.sixpack* %71)
  %73 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %74 = call i32 @tty_unthrottle(%struct.tty_struct* %73)
  br label %75

75:                                               ; preds = %66, %20, %14
  ret void
}

declare dso_local %struct.sixpack* @sp_get(%struct.tty_struct*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sixpack_decode(%struct.sixpack*, i8*, i32) #1

declare dso_local i32 @sp_put(%struct.sixpack*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
