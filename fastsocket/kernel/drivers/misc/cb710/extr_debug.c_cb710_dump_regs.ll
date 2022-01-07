; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_debug.c_cb710_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_debug.c_cb710_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_chip = type { i32 }

@CB710_DUMP_REGS_MASK = common dso_local global i32 0, align 4
@CB710_DUMP_REGS_ALL = common dso_local global i32 0, align 4
@CB710_DUMP_ACCESS_MASK = common dso_local global i32 0, align 4
@CB710_DUMP_ACCESS_8 = common dso_local global i32 0, align 4
@CB710_DUMP_ACCESS_32 = common dso_local global i32 0, align 4
@CB710_DUMP_ACCESS_16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb710_dump_regs(%struct.cb710_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.cb710_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.cb710_chip* %0, %struct.cb710_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CB710_DUMP_REGS_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @CB710_DUMP_REGS_ALL, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CB710_DUMP_ACCESS_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @CB710_DUMP_ACCESS_8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CB710_DUMP_ACCESS_32, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cb710_read_and_dump_regs_32(%struct.cb710_chip* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CB710_DUMP_ACCESS_16, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cb710_read_and_dump_regs_16(%struct.cb710_chip* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CB710_DUMP_ACCESS_8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cb710_read_and_dump_regs_8(%struct.cb710_chip* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @cb710_read_and_dump_regs_32(%struct.cb710_chip*, i32) #1

declare dso_local i32 @cb710_read_and_dump_regs_16(%struct.cb710_chip*, i32) #1

declare dso_local i32 @cb710_read_and_dump_regs_8(%struct.cb710_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
