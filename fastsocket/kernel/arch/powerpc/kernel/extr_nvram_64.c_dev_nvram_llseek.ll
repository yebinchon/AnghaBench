; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_nvram_64.c_dev_nvram_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_nvram_64.c_dev_nvram_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.file = type { i64 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @dev_nvram_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dev_nvram_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %10 = icmp eq i32 (...)* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* @ENODEV, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %4, align 8
  br label %42

14:                                               ; preds = %3
  %15 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %16 = call i32 (...) %15()
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %29 [
    i32 1, label %18
    i32 2, label %24
  ]

18:                                               ; preds = %14
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %29

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %14, %24, %18
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %35, %32, %11
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
