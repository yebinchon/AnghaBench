; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_remove_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_remove_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache* }
%struct.csr1212_csr_rom_cache = type { i64, %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csr1212_csr*, %struct.csr1212_csr_rom_cache*)* @csr1212_remove_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csr1212_remove_cache(%struct.csr1212_csr* %0, %struct.csr1212_csr_rom_cache* %1) #0 {
  %3 = alloca %struct.csr1212_csr*, align 8
  %4 = alloca %struct.csr1212_csr_rom_cache*, align 8
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %3, align 8
  store %struct.csr1212_csr_rom_cache* %1, %struct.csr1212_csr_rom_cache** %4, align 8
  %5 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %6 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %5, i32 0, i32 2
  %7 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %8 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %9 = icmp eq %struct.csr1212_csr_rom_cache* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %12 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %11, i32 0, i32 2
  %13 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %12, align 8
  %14 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %15 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %14, i32 0, i32 2
  store %struct.csr1212_csr_rom_cache* %13, %struct.csr1212_csr_rom_cache** %15, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %18 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %17, i32 0, i32 1
  %19 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %18, align 8
  %20 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %21 = icmp eq %struct.csr1212_csr_rom_cache* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %24 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %23, i32 0, i32 1
  %25 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %24, align 8
  %26 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %27 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %26, i32 0, i32 1
  store %struct.csr1212_csr_rom_cache* %25, %struct.csr1212_csr_rom_cache** %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %30 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %29, i32 0, i32 1
  %31 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %30, align 8
  %32 = icmp ne %struct.csr1212_csr_rom_cache* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %35 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %34, i32 0, i32 2
  %36 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %35, align 8
  %37 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %38 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %37, i32 0, i32 1
  %39 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %38, align 8
  %40 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %39, i32 0, i32 2
  store %struct.csr1212_csr_rom_cache* %36, %struct.csr1212_csr_rom_cache** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %43 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %42, i32 0, i32 2
  %44 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %43, align 8
  %45 = icmp ne %struct.csr1212_csr_rom_cache* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %48 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %47, i32 0, i32 1
  %49 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %48, align 8
  %50 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %51 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %50, i32 0, i32 2
  %52 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %51, align 8
  %53 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %52, i32 0, i32 1
  store %struct.csr1212_csr_rom_cache* %49, %struct.csr1212_csr_rom_cache** %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %56 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %61 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %64 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @csr1212_detach_keyval_from_directory(i32 %62, i64 %65)
  %67 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %68 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @csr1212_release_keyval(i64 %69)
  br label %71

71:                                               ; preds = %59, %54
  %72 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %73 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %72)
  ret void
}

declare dso_local i32 @csr1212_detach_keyval_from_directory(i32, i64) #1

declare dso_local i32 @csr1212_release_keyval(i64) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
