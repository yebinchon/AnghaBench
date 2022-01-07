; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_read_fifo_regio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_read_fifo_regio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@A_FIFO_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32*, i32)* @read_fifo_regio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fifo_regio(%struct.hfc_multi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @A_FIFO_DATA0, align 4
  %8 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %9 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 4
  %12 = call i32 @outb(i32 %7, i64 %11)
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %19 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @inl(i64 %20)
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 4
  store i32 %27, i32* %6, align 4
  br label %13

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %35 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @inw(i64 %36)
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %50 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @inb(i64 %51)
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %45

58:                                               ; preds = %45
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
