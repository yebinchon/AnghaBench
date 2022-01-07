; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_guest_set_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_guest_set_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guest_set_pte(%struct.lg_cpu* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %13 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %11, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %22 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %25)
  %27 = icmp ult i32 %20, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %19
  %29 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %30 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @do_set_pte(%struct.lg_cpu* %41, i32 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %19

50:                                               ; preds = %19
  br label %72

51:                                               ; preds = %4
  %52 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %53 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @find_pgdir(%struct.TYPE_3__* %54, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %59 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %62)
  %64 = icmp ne i32 %57, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @do_set_pte(%struct.lg_cpu* %66, i32 %67, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %51
  br label %72

72:                                               ; preds = %71, %50
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @do_set_pte(%struct.lg_cpu*, i32, i64, i32) #1

declare dso_local i32 @find_pgdir(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
