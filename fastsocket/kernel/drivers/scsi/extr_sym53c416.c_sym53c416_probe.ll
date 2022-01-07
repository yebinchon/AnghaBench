; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@probeaddrs = common dso_local global i32* null, align 8
@IO_RANGE = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sym53c416_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym53c416_probe() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32], align 4
  %3 = load i32*, i32** @probeaddrs, align 8
  store i32* %3, i32** %1, align 8
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IO_RANGE, align 4
  %13 = load i32, i32* @ID, align 4
  %14 = call i64 @request_region(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @sym53c416_test(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %26 = call i32 @sym53c416_setup(i32* null, i32* %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IO_RANGE, align 4
  %31 = call i32 @release_region(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %1, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %1, align 8
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i64 @request_region(i32, i32, i32) #1

declare dso_local i64 @sym53c416_test(i32) #1

declare dso_local i32 @sym53c416_setup(i32*, i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
