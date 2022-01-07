; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_getDebugChar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_getDebugChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@kgdb_port = common dso_local global %struct.TYPE_2__* null, align 8
@R_SERIAL0_READ = common dso_local global i32 0, align 4
@data_avail = common dso_local global i32 0, align 4
@data_in = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getDebugChar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_port, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %12, %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_port, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @R_SERIAL0_READ, align 4
  %15 = load i32, i32* @data_avail, align 4
  %16 = call i64 @IO_MASK(i32 %14, i32 %15)
  %17 = and i64 %13, %16
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %7, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %2, align 8
  %22 = load i32, i32* @R_SERIAL0_READ, align 4
  %23 = load i32, i32* @data_in, align 4
  %24 = call i64 @IO_MASK(i32 %22, i32 %23)
  %25 = and i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %20, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @IO_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
