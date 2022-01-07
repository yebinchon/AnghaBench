; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { %struct.csr1212_csr_rom_cache* }
%struct.csr1212_csr_rom_cache = type { i64, i64, i32*, %struct.csr1212_csr_rom_cache* }

@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csr1212_read(%struct.csr1212_csr* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csr1212_csr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.csr1212_csr_rom_cache*, align 8
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.csr1212_csr*, %struct.csr1212_csr** %6, align 8
  %12 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %11, i32 0, i32 0
  %13 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %12, align 8
  store %struct.csr1212_csr_rom_cache* %13, %struct.csr1212_csr_rom_cache** %10, align 8
  br label %14

14:                                               ; preds = %51, %4
  %15 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %16 = icmp ne %struct.csr1212_csr_rom_cache* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %20 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %28 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %31 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp sle i64 %26, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %23
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %38 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %42 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i64 @bytes_to_quads(i64 %44)
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i8* %36, i32* %46, i64 %47)
  %49 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %23, %17
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %53 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %52, i32 0, i32 3
  %54 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %53, align 8
  store %struct.csr1212_csr_rom_cache* %54, %struct.csr1212_csr_rom_cache** %10, align 8
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %35
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @bytes_to_quads(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
