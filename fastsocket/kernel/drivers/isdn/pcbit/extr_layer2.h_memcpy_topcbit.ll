; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_memcpy_topcbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_memcpy_topcbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32, i32 }

@BANKLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*, i32*, i32)* @memcpy_topcbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memcpy_topcbit(%struct.pcbit_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BANKLEN, align 4
  %10 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %9, %16
  %18 = sub nsw i32 %8, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @memcpy_toio(i32 %24, i32* %25, i32 %28)
  %30 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy_toio(i32 %32, i32* %38, i32 %39)
  %41 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %69

48:                                               ; preds = %3
  %49 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @memcpy_toio(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %48
  br label %69

69:                                               ; preds = %68, %21
  ret void
}

declare dso_local i32 @memcpy_toio(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
