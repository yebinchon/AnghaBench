; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_write_reg_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_write_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_write_reg_bits(%struct.em28xx* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @em28xx_read_reg(%struct.em28xx* %32, i64 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @em28xx_write_regs(%struct.em28xx* %50, i64 %51, i32* %11, i32 1)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @em28xx_read_reg(%struct.em28xx*, i64) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
