; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.h_csr1212_rom_cache_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.h_csr1212_rom_cache_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr_rom_cache = type { i64, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_csr_rom_cache* (i32, i64)* @csr1212_rom_cache_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.csr1212_csr_rom_cache*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 72, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.csr1212_csr_rom_cache* @CSR1212_MALLOC(i32 %9)
  store %struct.csr1212_csr_rom_cache* %10, %struct.csr1212_csr_rom_cache** %6, align 8
  %11 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %12 = icmp ne %struct.csr1212_csr_rom_cache* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.csr1212_csr_rom_cache* null, %struct.csr1212_csr_rom_cache** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %16 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %15, i32 0, i32 8
  store i32* null, i32** %16, align 8
  %17 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %18 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %17, i32 0, i32 7
  store i32* null, i32** %18, align 8
  %19 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %20 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %22 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %24 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %26 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %29 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %32 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %34 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  store %struct.csr1212_csr_rom_cache* %35, %struct.csr1212_csr_rom_cache** %3, align 8
  br label %36

36:                                               ; preds = %14, %13
  %37 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %3, align 8
  ret %struct.csr1212_csr_rom_cache* %37
}

declare dso_local %struct.csr1212_csr_rom_cache* @CSR1212_MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
