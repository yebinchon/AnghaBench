; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_bt878.c_bt878_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i32, i32, i8*, i32, i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt878*)* @bt878_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt878_mem_alloc(%struct.bt878* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt878*, align 8
  store %struct.bt878* %0, %struct.bt878** %3, align 8
  %4 = load %struct.bt878*, %struct.bt878** %3, align 8
  %5 = getelementptr inbounds %struct.bt878, %struct.bt878* %4, i32 0, i32 5
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = load %struct.bt878*, %struct.bt878** %3, align 8
  %10 = getelementptr inbounds %struct.bt878, %struct.bt878* %9, i32 0, i32 0
  store i32 131072, i32* %10, align 8
  %11 = load %struct.bt878*, %struct.bt878** %3, align 8
  %12 = getelementptr inbounds %struct.bt878, %struct.bt878* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bt878*, %struct.bt878** %3, align 8
  %15 = getelementptr inbounds %struct.bt878, %struct.bt878* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bt878*, %struct.bt878** %3, align 8
  %18 = getelementptr inbounds %struct.bt878, %struct.bt878* %17, i32 0, i32 6
  %19 = call i8* @pci_alloc_consistent(i32 %13, i32 %16, i32* %18)
  %20 = load %struct.bt878*, %struct.bt878** %3, align 8
  %21 = getelementptr inbounds %struct.bt878, %struct.bt878* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.bt878*, %struct.bt878** %3, align 8
  %23 = getelementptr inbounds %struct.bt878, %struct.bt878* %22, i32 0, i32 5
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %8
  %30 = load %struct.bt878*, %struct.bt878** %3, align 8
  %31 = getelementptr inbounds %struct.bt878, %struct.bt878* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.bt878*, %struct.bt878** %3, align 8
  %34 = getelementptr inbounds %struct.bt878, %struct.bt878* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i8* %32, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.bt878*, %struct.bt878** %3, align 8
  %39 = getelementptr inbounds %struct.bt878, %struct.bt878* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load %struct.bt878*, %struct.bt878** %3, align 8
  %45 = getelementptr inbounds %struct.bt878, %struct.bt878* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bt878*, %struct.bt878** %3, align 8
  %47 = getelementptr inbounds %struct.bt878, %struct.bt878* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bt878*, %struct.bt878** %3, align 8
  %50 = getelementptr inbounds %struct.bt878, %struct.bt878* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bt878*, %struct.bt878** %3, align 8
  %53 = getelementptr inbounds %struct.bt878, %struct.bt878* %52, i32 0, i32 3
  %54 = call i8* @pci_alloc_consistent(i32 %48, i32 %51, i32* %53)
  %55 = load %struct.bt878*, %struct.bt878** %3, align 8
  %56 = getelementptr inbounds %struct.bt878, %struct.bt878* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.bt878*, %struct.bt878** %3, align 8
  %58 = getelementptr inbounds %struct.bt878, %struct.bt878* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %42
  %62 = load %struct.bt878*, %struct.bt878** %3, align 8
  %63 = call i32 @bt878_mem_free(%struct.bt878* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %75

66:                                               ; preds = %42
  %67 = load %struct.bt878*, %struct.bt878** %3, align 8
  %68 = getelementptr inbounds %struct.bt878, %struct.bt878* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.bt878*, %struct.bt878** %3, align 8
  %71 = getelementptr inbounds %struct.bt878, %struct.bt878* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset(i8* %69, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %66, %37
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %61, %26
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bt878_mem_free(%struct.bt878*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
