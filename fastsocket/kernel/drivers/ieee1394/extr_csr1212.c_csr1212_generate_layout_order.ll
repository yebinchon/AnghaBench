; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_layout_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_layout_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.csr1212_keyval*, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.csr1212_keyval*)* @csr1212_generate_layout_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @csr1212_generate_layout_order(%struct.csr1212_keyval* %0) #0 {
  %2 = alloca %struct.csr1212_keyval*, align 8
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca i64, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %2, align 8
  %5 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  store %struct.csr1212_keyval* %5, %struct.csr1212_keyval** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %8 = icmp ne %struct.csr1212_keyval* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %11 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %40 [
    i32 128, label %14
    i32 129, label %24
  ]

14:                                               ; preds = %9
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %16 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %40

24:                                               ; preds = %9
  %25 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %26 = call i32 @csr1212_generate_layout_subdir(%struct.csr1212_keyval* %25, %struct.csr1212_keyval** %3)
  %27 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %28 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %32 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %9, %24, %14
  %41 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %42 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %41, i32 0, i32 0
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %42, align 8
  store %struct.csr1212_keyval* %43, %struct.csr1212_keyval** %2, align 8
  br label %6

44:                                               ; preds = %6
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @quads_to_bytes(i64 %45)
  ret i64 %46
}

declare dso_local i32 @csr1212_generate_layout_subdir(%struct.csr1212_keyval*, %struct.csr1212_keyval**) #1

declare dso_local i64 @quads_to_bytes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
