; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_quantize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_timing*, %struct.ata_timing*, i32, i32)* @ata_timing_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_timing_quantize(%struct.ata_timing* %0, %struct.ata_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_timing*, align 8
  %6 = alloca %struct.ata_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_timing* %0, %struct.ata_timing** %5, align 8
  store %struct.ata_timing* %1, %struct.ata_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %10 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1000
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @EZ(i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %17 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %19 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @EZ(i32 %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %26 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %28 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @EZ(i32 %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %35 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %37 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @EZ(i32 %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %44 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %46 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 1000
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @EZ(i32 %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %53 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %55 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @EZ(i32 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %62 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %64 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 1000
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @EZ(i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %71 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %73 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @EZ(i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %80 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %82 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @EZ(i32 %84, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %89 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  ret void
}

declare dso_local i8* @EZ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
