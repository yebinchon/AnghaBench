; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_writew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32, i32 }

@BANKLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*, i16)* @pcbit_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_writew(%struct.pcbit_dev* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.pcbit_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i32, i32* @BANKLEN, align 4
  %7 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = sub nsw i32 %6, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %48 [
    i32 2, label %16
    i32 1, label %27
  ]

16:                                               ; preds = %2
  %17 = load i16, i16* %4, align 2
  %18 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writew(i16 zeroext %17, i32 %20)
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %58

27:                                               ; preds = %2
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writeb(i32 %30, i32 %33)
  %35 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = ashr i32 %41, 8
  %43 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %44 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = call i32 @writeb(i32 %42, i32 %45)
  br label %58

48:                                               ; preds = %2
  %49 = load i16, i16* %4, align 2
  %50 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writew(i16 zeroext %49, i32 %52)
  %54 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48, %27, %16
  ret void
}

declare dso_local i32 @writew(i16 zeroext, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
