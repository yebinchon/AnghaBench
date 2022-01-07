; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek-pci.c_gemtek_pci_setfrequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek-pci.c_gemtek_pci_setfrequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemtek_pci = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gemtek_pci*, i64)* @gemtek_pci_setfrequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemtek_pci_setfrequency(%struct.gemtek_pci* %0, i64 %1) #0 {
  %3 = alloca %struct.gemtek_pci*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gemtek_pci* %0, %struct.gemtek_pci** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = udiv i64 %10, 200
  %12 = add i64 %11, 856
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  store i32 32768, i32* %7, align 4
  %14 = load %struct.gemtek_pci*, %struct.gemtek_pci** %3, align 8
  %15 = getelementptr inbounds %struct.gemtek_pci, %struct.gemtek_pci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.gemtek_pci*, %struct.gemtek_pci** %3, align 8
  %18 = getelementptr inbounds %struct.gemtek_pci, %struct.gemtek_pci* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.gemtek_pci*, %struct.gemtek_pci** %3, align 8
  %22 = getelementptr inbounds %struct.gemtek_pci, %struct.gemtek_pci* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @gemtek_pci_out(i32 6, i32 %23)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %30, %2
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @gemtek_pci_nil(i32 %26, i32* %8)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 9
  br i1 %32, label %25, label %33

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @gemtek_pci_cmd(i32 %37, i32 %38, i32* %8)
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %34, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @outw(i32 16, i32 %48)
  %50 = load %struct.gemtek_pci*, %struct.gemtek_pci** %3, align 8
  %51 = getelementptr inbounds %struct.gemtek_pci, %struct.gemtek_pci* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gemtek_pci_out(i32, i32) #1

declare dso_local i32 @gemtek_pci_nil(i32, i32*) #1

declare dso_local i32 @gemtek_pci_cmd(i32, i32, i32*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
