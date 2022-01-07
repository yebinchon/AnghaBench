; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@CSR1212_KV_TYPE_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_keyval* (i32, i8*, i64)* @csr1212_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_keyval* @csr1212_new_leaf(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.csr1212_keyval*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @CSR1212_KV_TYPE_LEAF, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.csr1212_keyval* @csr1212_new_keyval(i32 %9, i32 %10)
  store %struct.csr1212_keyval* %11, %struct.csr1212_keyval** %8, align 8
  %12 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %13 = icmp ne %struct.csr1212_keyval* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %4, align 8
  br label %64

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = call i32* @CSR1212_MALLOC(i64 %19)
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %22 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32* %20, i32** %24, align 8
  %25 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %26 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %33 = call i32 @CSR1212_FREE(%struct.csr1212_keyval* %32)
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %4, align 8
  br label %64

34:                                               ; preds = %18
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %39 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i32* %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %37, %34
  br label %52

47:                                               ; preds = %15
  %48 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %49 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @bytes_to_quads(i64 %53)
  %55 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %56 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %60 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %62 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  store %struct.csr1212_keyval* %63, %struct.csr1212_keyval** %4, align 8
  br label %64

64:                                               ; preds = %52, %31, %14
  %65 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  ret %struct.csr1212_keyval* %65
}

declare dso_local %struct.csr1212_keyval* @csr1212_new_keyval(i32, i32) #1

declare dso_local i32* @CSR1212_MALLOC(i64) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_keyval*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @bytes_to_quads(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
