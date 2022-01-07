; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_positions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_positions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr_rom_cache = type { i32, i64, i64, %struct.csr1212_keyval*, %struct.csr1212_keyval* }
%struct.csr1212_keyval = type { i64, %struct.csr1212_keyval*, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_keyval* (%struct.csr1212_csr_rom_cache*, %struct.csr1212_keyval*, i32)* @csr1212_generate_positions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_keyval* @csr1212_generate_positions(%struct.csr1212_csr_rom_cache* %0, %struct.csr1212_keyval* %1, i32 %2) #0 {
  %4 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %5 = alloca %struct.csr1212_keyval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csr1212_keyval*, align 8
  %8 = alloca %struct.csr1212_keyval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.csr1212_csr_rom_cache* %0, %struct.csr1212_csr_rom_cache** %4, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_keyval* %12, %struct.csr1212_keyval** %7, align 8
  %13 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_keyval* %13, %struct.csr1212_keyval** %8, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %16 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %17 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %16, i32 0, i32 4
  store %struct.csr1212_keyval* %15, %struct.csr1212_keyval** %17, align 8
  br label %18

18:                                               ; preds = %83, %3
  %19 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %20 = icmp ne %struct.csr1212_keyval* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %24 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %84

29:                                               ; preds = %27
  %30 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %31 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CSR1212_KV_ID_EXTENDED_ROM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %38 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %44 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %47 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 129, label %56
  ]

50:                                               ; preds = %45
  %51 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %52 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %58 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %10, align 4
  br label %64

62:                                               ; preds = %45
  %63 = call i32 @WARN_ON(i32 1)
  br label %64

64:                                               ; preds = %62, %56, %50
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i64 @quads_to_bytes(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %74 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  store %struct.csr1212_keyval* %78, %struct.csr1212_keyval** %8, align 8
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %11, align 4
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %81 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %80, i32 0, i32 1
  %82 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %81, align 8
  store %struct.csr1212_keyval* %82, %struct.csr1212_keyval** %7, align 8
  br label %83

83:                                               ; preds = %77, %64
  br label %18

84:                                               ; preds = %27
  %85 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %86 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %87 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %86, i32 0, i32 3
  store %struct.csr1212_keyval* %85, %struct.csr1212_keyval** %87, align 8
  %88 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %89 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %92 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i64 @quads_to_bytes(i32 %96)
  %98 = add nsw i64 %94, %97
  %99 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %100 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  ret %struct.csr1212_keyval* %101
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @quads_to_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
