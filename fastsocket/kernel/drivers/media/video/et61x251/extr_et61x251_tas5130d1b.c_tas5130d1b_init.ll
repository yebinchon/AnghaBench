; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_tas5130d1b.c_tas5130d1b_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_tas5130d1b.c_tas5130d1b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et61x251_device*)* @tas5130d1b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5130d1b_init(%struct.et61x251_device* %0) #0 {
  %2 = alloca %struct.et61x251_device*, align 8
  %3 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %5 = call i64 @et61x251_write_reg(%struct.et61x251_device* %4, i32 20, i32 1)
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %11 = call i64 @et61x251_write_reg(%struct.et61x251_device* %10, i32 27, i32 2)
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %17 = call i64 @et61x251_write_reg(%struct.et61x251_device* %16, i32 2, i32 18)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %23 = call i64 @et61x251_write_reg(%struct.et61x251_device* %22, i32 14, i32 96)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %29 = call i64 @et61x251_write_reg(%struct.et61x251_device* %28, i32 128, i32 97)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %35 = call i64 @et61x251_write_reg(%struct.et61x251_device* %34, i32 240, i32 98)
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %41 = call i64 @et61x251_write_reg(%struct.et61x251_device* %40, i32 3, i32 99)
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  %46 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %47 = call i64 @et61x251_write_reg(%struct.et61x251_device* %46, i32 20, i32 100)
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %53 = call i64 @et61x251_write_reg(%struct.et61x251_device* %52, i32 244, i32 101)
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %59 = call i64 @et61x251_write_reg(%struct.et61x251_device* %58, i32 1, i32 102)
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  %64 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %65 = call i64 @et61x251_write_reg(%struct.et61x251_device* %64, i32 5, i32 103)
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  %70 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %71 = call i64 @et61x251_write_reg(%struct.et61x251_device* %70, i32 143, i32 104)
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  %76 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %77 = call i64 @et61x251_write_reg(%struct.et61x251_device* %76, i32 15, i32 141)
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  %82 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %83 = call i64 @et61x251_write_reg(%struct.et61x251_device* %82, i32 8, i32 142)
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @et61x251_write_reg(%struct.et61x251_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
