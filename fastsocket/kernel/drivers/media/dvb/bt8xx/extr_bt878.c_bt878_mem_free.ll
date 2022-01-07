; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i32*, i32, i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt878*)* @bt878_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt878_mem_free(%struct.bt878* %0) #0 {
  %2 = alloca %struct.bt878*, align 8
  store %struct.bt878* %0, %struct.bt878** %2, align 8
  %3 = load %struct.bt878*, %struct.bt878** %2, align 8
  %4 = getelementptr inbounds %struct.bt878, %struct.bt878* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.bt878*, %struct.bt878** %2, align 8
  %9 = getelementptr inbounds %struct.bt878, %struct.bt878* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.bt878*, %struct.bt878** %2, align 8
  %12 = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bt878*, %struct.bt878** %2, align 8
  %15 = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.bt878*, %struct.bt878** %2, align 8
  %18 = getelementptr inbounds %struct.bt878, %struct.bt878* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_free_consistent(i32 %10, i32 %13, i32* %16, i32 %19)
  %21 = load %struct.bt878*, %struct.bt878** %2, align 8
  %22 = getelementptr inbounds %struct.bt878, %struct.bt878* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %7, %1
  %24 = load %struct.bt878*, %struct.bt878** %2, align 8
  %25 = getelementptr inbounds %struct.bt878, %struct.bt878* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.bt878*, %struct.bt878** %2, align 8
  %30 = getelementptr inbounds %struct.bt878, %struct.bt878* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bt878*, %struct.bt878** %2, align 8
  %33 = getelementptr inbounds %struct.bt878, %struct.bt878* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bt878*, %struct.bt878** %2, align 8
  %36 = getelementptr inbounds %struct.bt878, %struct.bt878* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bt878*, %struct.bt878** %2, align 8
  %39 = getelementptr inbounds %struct.bt878, %struct.bt878* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(i32 %31, i32 %34, i32* %37, i32 %40)
  %42 = load %struct.bt878*, %struct.bt878** %2, align 8
  %43 = getelementptr inbounds %struct.bt878, %struct.bt878* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
