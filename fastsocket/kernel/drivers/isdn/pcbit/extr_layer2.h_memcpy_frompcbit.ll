; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_memcpy_frompcbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_memcpy_frompcbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32, i32 }

@BANKLEN = common dso_local global i32 0, align 4
@BANK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*, i32*, i32)* @memcpy_frompcbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memcpy_frompcbit(%struct.pcbit_dev* %0, i32* %1, i32 %2) #0 {
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
  %16 = load i32, i32* @BANK2, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %12, %17
  %19 = sub nsw i32 %9, %18
  %20 = sub nsw i32 %8, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @memcpy_fromio(i32* %24, i32 %27, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BANK2, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy_fromio(i32* %37, i32 %42, i32 %43)
  %45 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BANK2, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %77

54:                                               ; preds = %3
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @memcpy_fromio(i32* %55, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BANK2, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %54
  br label %77

77:                                               ; preds = %76, %23
  ret void
}

declare dso_local i32 @memcpy_fromio(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
