; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1110.c_sa1110_find_sdram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1110.c_sa1110_find_sdram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdram_params = type { i32 }

@sdram_tbl = common dso_local global %struct.sdram_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdram_params* (i8*)* @sa1110_find_sdram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdram_params* @sa1110_find_sdram(i8* %0) #0 {
  %2 = alloca %struct.sdram_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sdram_params*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.sdram_params*, %struct.sdram_params** @sdram_tbl, align 8
  store %struct.sdram_params* %5, %struct.sdram_params** %4, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.sdram_params*, %struct.sdram_params** %4, align 8
  %8 = load %struct.sdram_params*, %struct.sdram_params** @sdram_tbl, align 8
  %9 = load %struct.sdram_params*, %struct.sdram_params** @sdram_tbl, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.sdram_params* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %8, i64 %11
  %13 = icmp ult %struct.sdram_params* %7, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.sdram_params*, %struct.sdram_params** %4, align 8
  %17 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i8* %15, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.sdram_params*, %struct.sdram_params** %4, align 8
  store %struct.sdram_params* %22, %struct.sdram_params** %2, align 8
  br label %28

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.sdram_params*, %struct.sdram_params** %4, align 8
  %26 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %25, i32 1
  store %struct.sdram_params* %26, %struct.sdram_params** %4, align 8
  br label %6

27:                                               ; preds = %6
  store %struct.sdram_params* null, %struct.sdram_params** %2, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.sdram_params*, %struct.sdram_params** %2, align 8
  ret %struct.sdram_params* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.sdram_params*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
