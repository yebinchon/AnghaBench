; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_read_fifo_pcimem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_read_fifo_pcimem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@A_FIFO_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32*, i32)* @read_fifo_pcimem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fifo_pcimem(%struct.hfc_multi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = ashr i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %13 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @A_FIFO_DATA0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  br label %7

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %29, %24
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %31 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @A_FIFO_DATA0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readw(i64 %34)
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %48 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @A_FIFO_DATA0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readb(i64 %51)
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %43

58:                                               ; preds = %43
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
