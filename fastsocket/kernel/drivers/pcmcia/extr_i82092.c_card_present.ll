; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_i82092.c_card_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_i82092.c_card_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"card_present\00", align 1
@MAX_SOCKETS = common dso_local global i32 0, align 4
@sockets = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"card_present 1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"card_present 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @card_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @card_present(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_SOCKETS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %32

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @indirect_read(i32 %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 12
  %27 = icmp eq i32 %26, 12
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

30:                                               ; preds = %22
  %31 = call i32 @leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %21, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @enter(i8*) #1

declare dso_local i32 @indirect_read(i32, i32) #1

declare dso_local i32 @leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
