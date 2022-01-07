; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/82xx/extr_pq2ads-pci-pic.c_pq2ads_pci_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/82xx/extr_pq2ads-pci-pic.c_pq2ads_pci_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.pq2ads_pci_pic* }
%struct.pq2ads_pci_pic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @pq2ads_pci_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pq2ads_pci_irq_demux(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.pq2ads_pci_pic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 0
  %13 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %12, align 8
  store %struct.pq2ads_pci_pic* %13, %struct.pq2ads_pci_pic** %5, align 8
  br label %14

14:                                               ; preds = %54, %2
  %15 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %5, align 8
  %16 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @in_be32(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %5, align 8
  %21 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @in_be32(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  br label %55

32:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -2147483648
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %5, align 8
  %42 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @irq_linear_revmap(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @generic_handle_irq(i32 %46)
  br label %48

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %33

54:                                               ; preds = %33
  br label %14

55:                                               ; preds = %31
  ret void
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
