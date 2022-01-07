; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.cx18_in_work_order = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"%x %s\0A\00", align 1
@CX18_F_I_LOADED_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"FW version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epu_debug(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_in_work_order*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %4, align 8
  %7 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %8 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %11 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 46)
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @CX18_F_I_LOADED_FW, align 4
  %21 = load %struct.cx18*, %struct.cx18** %3, align 8
  %22 = getelementptr inbounds %struct.cx18, %struct.cx18* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = call i32 @CX18_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %28, %25, %2
  ret void
}

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @CX18_INFO(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
