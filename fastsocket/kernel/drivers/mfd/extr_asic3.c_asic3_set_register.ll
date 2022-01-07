; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_set_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asic3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asic3_set_register(%struct.asic3* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.asic3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.asic3* %0, %struct.asic3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.asic3*, %struct.asic3** %5, align 8
  %12 = getelementptr inbounds %struct.asic3, %struct.asic3* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.asic3*, %struct.asic3** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @asic3_read_register(%struct.asic3* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.asic3*, %struct.asic3** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @asic3_write_register(%struct.asic3* %30, i32 %31, i32 %32)
  %34 = load %struct.asic3*, %struct.asic3** %5, align 8
  %35 = getelementptr inbounds %struct.asic3, %struct.asic3* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
