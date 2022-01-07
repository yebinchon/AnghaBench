; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_create_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_create_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i64, i64, %struct.csr1212_csr*, %struct.csr1212_csr*, i8*, %struct.csr1212_bus_ops*, i32, i32, i32 }
%struct.csr1212_bus_ops = type { i32 }

@CSR1212_CONFIG_ROM_SPACE_OFFSET = common dso_local global i32 0, align 4
@CSR1212_CONFIG_ROM_SPACE_SIZE = common dso_local global i32 0, align 4
@CSR1212_KV_ID_VENDOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csr1212_csr* @csr1212_create_csr(%struct.csr1212_bus_ops* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.csr1212_csr*, align 8
  %5 = alloca %struct.csr1212_bus_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.csr1212_csr*, align 8
  store %struct.csr1212_bus_ops* %0, %struct.csr1212_bus_ops** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.csr1212_csr* @CSR1212_MALLOC(i32 64)
  store %struct.csr1212_csr* %9, %struct.csr1212_csr** %8, align 8
  %10 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %11 = icmp ne %struct.csr1212_csr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.csr1212_csr* null, %struct.csr1212_csr** %4, align 8
  br label %68

13:                                               ; preds = %3
  %14 = load i32, i32* @CSR1212_CONFIG_ROM_SPACE_OFFSET, align 4
  %15 = load i32, i32* @CSR1212_CONFIG_ROM_SPACE_SIZE, align 4
  %16 = call %struct.csr1212_csr* @csr1212_rom_cache_malloc(i32 %14, i32 %15)
  %17 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %18 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %17, i32 0, i32 2
  store %struct.csr1212_csr* %16, %struct.csr1212_csr** %18, align 8
  %19 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %20 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %19, i32 0, i32 2
  %21 = load %struct.csr1212_csr*, %struct.csr1212_csr** %20, align 8
  %22 = icmp ne %struct.csr1212_csr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %25 = call i32 @CSR1212_FREE(%struct.csr1212_csr* %24)
  store %struct.csr1212_csr* null, %struct.csr1212_csr** %4, align 8
  br label %68

26:                                               ; preds = %13
  %27 = load i32, i32* @CSR1212_KV_ID_VENDOR, align 4
  %28 = call i32 @csr1212_new_directory(i32 %27)
  %29 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %30 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %32 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %37 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %36, i32 0, i32 2
  %38 = load %struct.csr1212_csr*, %struct.csr1212_csr** %37, align 8
  %39 = call i32 @CSR1212_FREE(%struct.csr1212_csr* %38)
  %40 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %41 = call i32 @CSR1212_FREE(%struct.csr1212_csr* %40)
  store %struct.csr1212_csr* null, %struct.csr1212_csr** %4, align 8
  br label %68

42:                                               ; preds = %26
  %43 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %44 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %43, i32 0, i32 2
  %45 = load %struct.csr1212_csr*, %struct.csr1212_csr** %44, align 8
  %46 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %49 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %52 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %55 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.csr1212_bus_ops*, %struct.csr1212_bus_ops** %5, align 8
  %57 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %58 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %57, i32 0, i32 5
  store %struct.csr1212_bus_ops* %56, %struct.csr1212_bus_ops** %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %61 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %63 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %62, i32 0, i32 2
  %64 = load %struct.csr1212_csr*, %struct.csr1212_csr** %63, align 8
  %65 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  %66 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %65, i32 0, i32 3
  store %struct.csr1212_csr* %64, %struct.csr1212_csr** %66, align 8
  %67 = load %struct.csr1212_csr*, %struct.csr1212_csr** %8, align 8
  store %struct.csr1212_csr* %67, %struct.csr1212_csr** %4, align 8
  br label %68

68:                                               ; preds = %42, %35, %23, %12
  %69 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  ret %struct.csr1212_csr* %69
}

declare dso_local %struct.csr1212_csr* @CSR1212_MALLOC(i32) #1

declare dso_local %struct.csr1212_csr* @csr1212_rom_cache_malloc(i32, i32) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_csr*) #1

declare dso_local i32 @csr1212_new_directory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
