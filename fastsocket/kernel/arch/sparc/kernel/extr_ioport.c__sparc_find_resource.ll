; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ioport.c__sparc_find_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ioport.c__sparc_find_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.resource*, i64)* @_sparc_find_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @_sparc_find_resource(%struct.resource* %0, i64 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.resource*, %struct.resource** %4, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3
  %9 = load %struct.resource*, %struct.resource** %8, align 8
  store %struct.resource* %9, %struct.resource** %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %26, %struct.resource** %3, align 8
  br label %33

27:                                               ; preds = %19, %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 2
  %31 = load %struct.resource*, %struct.resource** %30, align 8
  store %struct.resource* %31, %struct.resource** %6, align 8
  br label %10

32:                                               ; preds = %10
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
