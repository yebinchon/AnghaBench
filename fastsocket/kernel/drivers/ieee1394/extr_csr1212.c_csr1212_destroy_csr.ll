; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_destroy_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_destroy_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { %struct.csr1212_csr*, %struct.csr1212_csr*, %struct.csr1212_csr*, i32 }
%struct.csr1212_csr_rom_cache = type { %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache*, i32 }
%struct.csr1212_cache_region = type { %struct.csr1212_cache_region*, %struct.csr1212_cache_region*, %struct.csr1212_cache_region*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csr1212_destroy_csr(%struct.csr1212_csr* %0) #0 {
  %2 = alloca %struct.csr1212_csr*, align 8
  %3 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %4 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %5 = alloca %struct.csr1212_cache_region*, align 8
  %6 = alloca %struct.csr1212_cache_region*, align 8
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %2, align 8
  %7 = load %struct.csr1212_csr*, %struct.csr1212_csr** %2, align 8
  %8 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @csr1212_release_keyval(i32 %9)
  %11 = load %struct.csr1212_csr*, %struct.csr1212_csr** %2, align 8
  %12 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %11, i32 0, i32 2
  %13 = load %struct.csr1212_csr*, %struct.csr1212_csr** %12, align 8
  %14 = bitcast %struct.csr1212_csr* %13 to %struct.csr1212_csr_rom_cache*
  store %struct.csr1212_csr_rom_cache* %14, %struct.csr1212_csr_rom_cache** %3, align 8
  br label %15

15:                                               ; preds = %35, %1
  %16 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %3, align 8
  %17 = icmp ne %struct.csr1212_csr_rom_cache* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %3, align 8
  store %struct.csr1212_csr_rom_cache* %19, %struct.csr1212_csr_rom_cache** %4, align 8
  %20 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %3, align 8
  %21 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %20, i32 0, i32 1
  %22 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %21, align 8
  %23 = bitcast %struct.csr1212_csr_rom_cache* %22 to %struct.csr1212_cache_region*
  store %struct.csr1212_cache_region* %23, %struct.csr1212_cache_region** %5, align 8
  br label %24

24:                                               ; preds = %27, %18
  %25 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %26 = icmp ne %struct.csr1212_cache_region* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  store %struct.csr1212_cache_region* %28, %struct.csr1212_cache_region** %6, align 8
  %29 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %30 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %29, i32 0, i32 0
  %31 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %30, align 8
  store %struct.csr1212_cache_region* %31, %struct.csr1212_cache_region** %5, align 8
  %32 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %33 = bitcast %struct.csr1212_cache_region* %32 to %struct.csr1212_csr_rom_cache*
  %34 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %33)
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %3, align 8
  %37 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %36, i32 0, i32 0
  %38 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %37, align 8
  store %struct.csr1212_csr_rom_cache* %38, %struct.csr1212_csr_rom_cache** %3, align 8
  %39 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %40 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %39)
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.csr1212_csr*, %struct.csr1212_csr** %2, align 8
  %43 = bitcast %struct.csr1212_csr* %42 to %struct.csr1212_csr_rom_cache*
  %44 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %43)
  ret void
}

declare dso_local i32 @csr1212_release_keyval(i32) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
