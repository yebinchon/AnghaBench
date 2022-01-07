; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_find_keyval_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_find_keyval_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i64, %struct.csr1212_keyval* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_keyval* (%struct.csr1212_keyval*, i64)* @csr1212_find_keyval_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_keyval* @csr1212_find_keyval_offset(%struct.csr1212_keyval* %0, i64 %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %8 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %7, i32 0, i32 1
  %9 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  store %struct.csr1212_keyval* %9, %struct.csr1212_keyval** %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %12 = icmp ne %struct.csr1212_keyval* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %16 = icmp ne %struct.csr1212_keyval* %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  %20 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %21 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %26, %struct.csr1212_keyval** %3, align 8
  br label %33

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %30 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %29, i32 0, i32 1
  %31 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %30, align 8
  store %struct.csr1212_keyval* %31, %struct.csr1212_keyval** %6, align 8
  br label %10

32:                                               ; preds = %17
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  ret %struct.csr1212_keyval* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
