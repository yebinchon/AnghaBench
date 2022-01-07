; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_cb = type { i32, %struct.thash_data*, %struct.TYPE_2__ }
%struct.thash_data = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@INVALID_TI_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thash_init(%struct.thash_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.thash_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.thash_data*, align 8
  store %struct.thash_cb* %0, %struct.thash_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %8 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %7, i32 0, i32 1
  %9 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  %10 = ptrtoint %struct.thash_data* %9 to i64
  %11 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %12 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %15 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %18 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %22 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %25 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %24, i32 0, i32 1
  %26 = load %struct.thash_data*, %struct.thash_data** %25, align 8
  store %struct.thash_data* %26, %struct.thash_data** %6, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.thash_cb*, %struct.thash_cb** %3, align 8
  %30 = getelementptr inbounds %struct.thash_cb, %struct.thash_cb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %35 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %37 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @INVALID_TI_TAG, align 4
  %39 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %40 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %42 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %44 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %43, i32 1
  store %struct.thash_data* %44, %struct.thash_data** %6, align 8
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %27

48:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
