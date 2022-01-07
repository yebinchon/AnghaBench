; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_check_fit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_check_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slice_mask = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @slice_check_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_check_fit(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.slice_mask, align 4
  %4 = alloca %struct.slice_mask, align 4
  %5 = bitcast %struct.slice_mask* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.slice_mask* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %8, %10
  %12 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %17, %19
  %21 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %20, %22
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i1 [ false, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
