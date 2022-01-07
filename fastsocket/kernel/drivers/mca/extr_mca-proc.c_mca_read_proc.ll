; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-proc.c_mca_read_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-proc.c_mca_read_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32, i32, i64 (i8*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @mca_read_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_read_proc(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mca_device*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.mca_device*
  store %struct.mca_device* %16, %struct.mca_device** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.mca_device*, %struct.mca_device** %13, align 8
  %19 = call i32 @mca_default_procfn(i8* %17, %struct.mca_device* %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mca_device*, %struct.mca_device** %13, align 8
  %21 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %20, i32 0, i32 2
  %22 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %21, align 8
  %23 = icmp ne i64 (i8*, i32, i32)* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %6
  %25 = load %struct.mca_device*, %struct.mca_device** %13, align 8
  %26 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %25, i32 0, i32 2
  %27 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load %struct.mca_device*, %struct.mca_device** %13, align 8
  %33 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mca_device*, %struct.mca_device** %13, align 8
  %36 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 %27(i8* %31, i32 %34, i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %24, %6
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8**, i8*** %8, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %14, align 4
  ret i32 %70
}

declare dso_local i32 @mca_default_procfn(i8*, %struct.mca_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
