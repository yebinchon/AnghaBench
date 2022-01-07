; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_load_guest_gdt_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_load_guest_gdt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"too many gdt entries %i\00", align 1
@CHANGED_GDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_guest_gdt_entry(%struct.lg_cpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %11 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = icmp uge i64 %9, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @kill_guest(%struct.lg_cpu* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %47

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %23 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %21, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %31 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %29, i64* %36, align 8
  %37 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = call i32 @fixup_gdt_table(%struct.lg_cpu* %37, i64 %38, i64 %40)
  %42 = load i32, i32* @CHANGED_GDT, align 4
  %43 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %44 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*, i64) #1

declare dso_local i32 @fixup_gdt_table(%struct.lg_cpu*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
