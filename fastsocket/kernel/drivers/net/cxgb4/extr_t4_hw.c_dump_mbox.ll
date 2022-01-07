; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_dump_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_dump_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"mbox %d: %llx %llx %llx %llx %llx %llx %llx %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i64)* @dump_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mbox(%struct.adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @t4_read_reg64(%struct.adapter* %11, i64 %12)
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 8
  %17 = call i64 @t4_read_reg64(%struct.adapter* %14, i64 %16)
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 16
  %21 = call i64 @t4_read_reg64(%struct.adapter* %18, i64 %20)
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 24
  %25 = call i64 @t4_read_reg64(%struct.adapter* %22, i64 %24)
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 32
  %29 = call i64 @t4_read_reg64(%struct.adapter* %26, i64 %28)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 40
  %33 = call i64 @t4_read_reg64(%struct.adapter* %30, i64 %32)
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 48
  %37 = call i64 @t4_read_reg64(%struct.adapter* %34, i64 %36)
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 56
  %41 = call i64 @t4_read_reg64(%struct.adapter* %38, i64 %40)
  %42 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %13, i64 %17, i64 %21, i64 %25, i64 %29, i64 %33, i64 %37, i64 %41)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @t4_read_reg64(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
