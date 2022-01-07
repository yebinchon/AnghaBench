; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64 }
%struct.em28xx_reg_seq = type { i32, i64, i32, i32 }

@EM28XX_SUSPEND = common dso_local global i64 0, align 8
@EM28XX_ANALOG_MODE = common dso_local global i64 0, align 8
@EM28XX_R12_VINENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_gpio_set(%struct.em28xx* %0, %struct.em28xx_reg_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.em28xx_reg_seq*, align 8
  %6 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.em28xx_reg_seq* %1, %struct.em28xx_reg_seq** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %8 = icmp ne %struct.em28xx_reg_seq* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %3, align 4
  br label %78

11:                                               ; preds = %2
  %12 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EM28XX_SUSPEND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %19 = call i32 @em28xx_write_reg(%struct.em28xx* %18, i32 72, i32 0)
  %20 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EM28XX_ANALOG_MODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %28 = call i32 @em28xx_write_reg(%struct.em28xx* %26, i32 %27, i32 103)
  br label %33

29:                                               ; preds = %17
  %30 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %31 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %32 = call i32 @em28xx_write_reg(%struct.em28xx* %30, i32 %31, i32 55)
  br label %33

33:                                               ; preds = %29, %25
  %34 = call i32 @msleep(i32 6)
  br label %35

35:                                               ; preds = %33, %11
  br label %36

36:                                               ; preds = %73, %35
  %37 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %38 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %43 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %48 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %49 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %52 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %55 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %47, i64 %50, i32 %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %78

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %65 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %70 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @msleep(i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.em28xx_reg_seq*, %struct.em28xx_reg_seq** %5, align 8
  %75 = getelementptr inbounds %struct.em28xx_reg_seq, %struct.em28xx_reg_seq* %74, i32 1
  store %struct.em28xx_reg_seq* %75, %struct.em28xx_reg_seq** %5, align 8
  br label %36

76:                                               ; preds = %36
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %60, %9
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
