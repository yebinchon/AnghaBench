; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ghes*)* @ghes_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghes_proc(%struct.ghes* %0) #0 {
  %2 = alloca %struct.ghes*, align 8
  %3 = alloca i32, align 4
  store %struct.ghes* %0, %struct.ghes** %2, align 8
  %4 = load %struct.ghes*, %struct.ghes** %2, align 8
  %5 = call i32 @ghes_read_estatus(%struct.ghes* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.ghes*, %struct.ghes** %2, align 8
  %11 = getelementptr inbounds %struct.ghes, %struct.ghes* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ghes_estatus_cached(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.ghes*, %struct.ghes** %2, align 8
  %17 = getelementptr inbounds %struct.ghes, %struct.ghes* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ghes*, %struct.ghes** %2, align 8
  %20 = getelementptr inbounds %struct.ghes, %struct.ghes* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ghes_print_estatus(i32* null, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.ghes*, %struct.ghes** %2, align 8
  %26 = getelementptr inbounds %struct.ghes, %struct.ghes* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ghes*, %struct.ghes** %2, align 8
  %29 = getelementptr inbounds %struct.ghes, %struct.ghes* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ghes_estatus_cache_add(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %15
  br label %33

33:                                               ; preds = %32, %9
  %34 = load %struct.ghes*, %struct.ghes** %2, align 8
  %35 = getelementptr inbounds %struct.ghes, %struct.ghes* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ghes_do_proc(i32 %36)
  br label %38

38:                                               ; preds = %33, %8
  %39 = load %struct.ghes*, %struct.ghes** %2, align 8
  %40 = call i32 @ghes_clear_estatus(%struct.ghes* %39)
  ret i32 0
}

declare dso_local i32 @ghes_read_estatus(%struct.ghes*, i32) #1

declare dso_local i32 @ghes_estatus_cached(i32) #1

declare dso_local i64 @ghes_print_estatus(i32*, i32, i32) #1

declare dso_local i32 @ghes_estatus_cache_add(i32, i32) #1

declare dso_local i32 @ghes_do_proc(i32) #1

declare dso_local i32 @ghes_clear_estatus(%struct.ghes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
