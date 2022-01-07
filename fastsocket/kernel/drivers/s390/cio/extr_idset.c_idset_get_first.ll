; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_idset.c_idset_get_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_idset.c_idset_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idset = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idset*, i32*, i32*)* @idset_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idset_get_first(%struct.idset* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idset*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.idset* %0, %struct.idset** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.idset*, %struct.idset** %5, align 8
  %10 = getelementptr inbounds %struct.idset, %struct.idset* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.idset*, %struct.idset** %5, align 8
  %13 = getelementptr inbounds %struct.idset, %struct.idset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.idset*, %struct.idset** %5, align 8
  %16 = getelementptr inbounds %struct.idset, %struct.idset* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = call i32 @find_first_bit(i32 %11, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.idset*, %struct.idset** %5, align 8
  %22 = getelementptr inbounds %struct.idset, %struct.idset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.idset*, %struct.idset** %5, align 8
  %25 = getelementptr inbounds %struct.idset, %struct.idset* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = icmp sge i32 %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.idset*, %struct.idset** %5, align 8
  %33 = getelementptr inbounds %struct.idset, %struct.idset* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.idset*, %struct.idset** %5, align 8
  %39 = getelementptr inbounds %struct.idset, %struct.idset* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %37, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %30, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
