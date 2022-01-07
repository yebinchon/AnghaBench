; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_idset.c_idset_add_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_idset.c_idset_add_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idset = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idset_add_set(%struct.idset* %0, %struct.idset* %1) #0 {
  %3 = alloca %struct.idset*, align 8
  %4 = alloca %struct.idset*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.idset* %0, %struct.idset** %3, align 8
  store %struct.idset* %1, %struct.idset** %4, align 8
  %7 = load %struct.idset*, %struct.idset** %3, align 8
  %8 = getelementptr inbounds %struct.idset, %struct.idset* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.idset*, %struct.idset** %3, align 8
  %11 = getelementptr inbounds %struct.idset, %struct.idset* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = call i32 @__BITOPS_WORDS(i32 %13)
  %15 = load %struct.idset*, %struct.idset** %4, align 8
  %16 = getelementptr inbounds %struct.idset, %struct.idset* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.idset*, %struct.idset** %4, align 8
  %19 = getelementptr inbounds %struct.idset, %struct.idset* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = call i32 @__BITOPS_WORDS(i32 %21)
  %23 = call i64 @min(i32 %14, i32 %22)
  store i64 %23, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %42, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.idset*, %struct.idset** %4, align 8
  %30 = getelementptr inbounds %struct.idset, %struct.idset* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.idset*, %struct.idset** %3, align 8
  %36 = getelementptr inbounds %struct.idset, %struct.idset* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %34
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %24

45:                                               ; preds = %24
  ret void
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @__BITOPS_WORDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
