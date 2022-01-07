; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_fmt = type { i32 }

@formats = common dso_local global %struct.s2255_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s2255_fmt* (i32)* @format_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s2255_fmt* @format_by_fourcc(i32 %0) #0 {
  %2 = alloca %struct.s2255_fmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.s2255_fmt* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %11, i64 %13
  %15 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 -1, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %20, i64 %22
  %24 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %29, i64 %31
  store %struct.s2255_fmt* %32, %struct.s2255_fmt** %2, align 8
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  store %struct.s2255_fmt* null, %struct.s2255_fmt** %2, align 8
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.s2255_fmt*, %struct.s2255_fmt** %2, align 8
  ret %struct.s2255_fmt* %39
}

declare dso_local i32 @ARRAY_SIZE(%struct.s2255_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
