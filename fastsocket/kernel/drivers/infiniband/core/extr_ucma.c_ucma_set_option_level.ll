; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_option_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_option_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucma_context*, i32, i32, i8*, i64)* @ucma_set_option_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_set_option_level(%struct.ucma_context* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ucma_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ucma_context* %0, %struct.ucma_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %5
  %14 = load %struct.ucma_context*, %struct.ucma_context** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @ucma_set_option_id(%struct.ucma_context* %14, i32 %15, i8* %16, i64 %17)
  store i32 %18, i32* %11, align 4
  br label %28

19:                                               ; preds = %5
  %20 = load %struct.ucma_context*, %struct.ucma_context** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @ucma_set_option_ib(%struct.ucma_context* %20, i32 %21, i8* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %19, %13
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32 @ucma_set_option_id(%struct.ucma_context*, i32, i8*, i64) #1

declare dso_local i32 @ucma_set_option_ib(%struct.ucma_context*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
