; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_lanai_buf_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_lanai_buf_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_buffer = type { i32, i32*, i32*, i32* }
%struct.pci_dev = type { i32 }

@LANAI_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"bad dmaaddr: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_buffer*, i64, i64, %struct.pci_dev*)* @lanai_buf_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_buf_allocate(%struct.lanai_buffer* %0, i64 %1, i64 %2, %struct.pci_dev* %3) #0 {
  %5 = alloca %struct.lanai_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.lanai_buffer* %0, %struct.lanai_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pci_dev* %3, %struct.pci_dev** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 131072
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i64 131072, i64* %6, align 8
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %22, %13
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %79, %31
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %35, i32 0, i32 0
  %37 = call i32* @pci_alloc_consistent(%struct.pci_dev* %33, i32 %34, i32* %36)
  %38 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %32
  %45 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 255
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = call i32 @APRINTK(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %70 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  br label %84

76:                                               ; preds = %32
  %77 = load i32, i32* %9, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %7, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %32, label %84

84:                                               ; preds = %79, %44
  ret void
}

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @APRINTK(i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
