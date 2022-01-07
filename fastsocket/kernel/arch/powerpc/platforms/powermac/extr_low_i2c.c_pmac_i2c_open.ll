; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { i32, i32, i32 (%struct.pmac_i2c_bus*)*, i32, i32 }

@pmac_i2c_force_poll = common dso_local global i64 0, align 8
@pmac_i2c_mode_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmac_i2c_open(%struct.pmac_i2c_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmac_i2c_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @pmac_i2c_force_poll, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ true, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %19 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %21 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @pmac_i2c_mode_std, align 4
  %23 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %24 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %26 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %25, i32 0, i32 2
  %27 = load i32 (%struct.pmac_i2c_bus*)*, i32 (%struct.pmac_i2c_bus*)** %26, align 8
  %28 = icmp ne i32 (%struct.pmac_i2c_bus*)* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %15
  %30 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %31 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %30, i32 0, i32 2
  %32 = load i32 (%struct.pmac_i2c_bus*)*, i32 (%struct.pmac_i2c_bus*)** %31, align 8
  %33 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %34 = call i32 %32(%struct.pmac_i2c_bus* %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %38 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %4, align 8
  %40 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %29, %15
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
