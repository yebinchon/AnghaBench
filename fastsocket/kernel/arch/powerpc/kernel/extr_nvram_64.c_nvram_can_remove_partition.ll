; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_nvram_64.c_nvram_can_remove_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_nvram_64.c_nvram_can_remove_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_partition = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_partition*, i8*, i32, i8**)* @nvram_can_remove_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_can_remove_partition(%struct.nvram_partition* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvram_partition*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.nvram_partition* %0, %struct.nvram_partition** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.nvram_partition*, %struct.nvram_partition** %6, align 8
  %12 = getelementptr inbounds %struct.nvram_partition, %struct.nvram_partition* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.nvram_partition*, %struct.nvram_partition** %6, align 8
  %24 = getelementptr inbounds %struct.nvram_partition, %struct.nvram_partition* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strncmp(i8* %22, i32 %26, i32 12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %57

30:                                               ; preds = %21
  br label %56

31:                                               ; preds = %18
  %32 = load i8**, i8*** %9, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i8**, i8*** %9, align 8
  store i8** %35, i8*** %10, align 8
  br label %36

36:                                               ; preds = %51, %34
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.nvram_partition*, %struct.nvram_partition** %6, align 8
  %44 = getelementptr inbounds %struct.nvram_partition, %struct.nvram_partition* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strncmp(i8* %42, i32 %46, i32 12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %57

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i8**, i8*** %10, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %10, align 8
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %55, %30
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %49, %29, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
