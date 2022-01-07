; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_clear_estatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_clear_estatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GHES_TO_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ghes*)* @ghes_clear_estatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghes_clear_estatus(%struct.ghes* %0) #0 {
  %2 = alloca %struct.ghes*, align 8
  store %struct.ghes* %0, %struct.ghes** %2, align 8
  %3 = load %struct.ghes*, %struct.ghes** %2, align 8
  %4 = getelementptr inbounds %struct.ghes, %struct.ghes* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.ghes*, %struct.ghes** %2, align 8
  %8 = getelementptr inbounds %struct.ghes, %struct.ghes* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GHES_TO_CLEAR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.ghes*, %struct.ghes** %2, align 8
  %16 = getelementptr inbounds %struct.ghes, %struct.ghes* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.ghes*, %struct.ghes** %2, align 8
  %19 = getelementptr inbounds %struct.ghes, %struct.ghes* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ghes_copy_tofrom_phys(%struct.TYPE_2__* %17, i32 %20, i32 8, i32 0)
  %22 = load i32, i32* @GHES_TO_CLEAR, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ghes*, %struct.ghes** %2, align 8
  %25 = getelementptr inbounds %struct.ghes, %struct.ghes* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @ghes_copy_tofrom_phys(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
