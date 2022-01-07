; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i64 }

@CSR1212_KV_TYPE_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csr1212_keyval* @csr1212_new_directory(i32 %0) #0 {
  %2 = alloca %struct.csr1212_keyval*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.csr1212_keyval*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CSR1212_KV_TYPE_DIRECTORY, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.csr1212_keyval* @csr1212_new_keyval(i32 %5, i32 %6)
  store %struct.csr1212_keyval* %7, %struct.csr1212_keyval** %4, align 8
  %8 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %9 = icmp ne %struct.csr1212_keyval* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %13 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %17 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %19 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %23 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %27 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  store %struct.csr1212_keyval* %28, %struct.csr1212_keyval** %2, align 8
  br label %29

29:                                               ; preds = %11, %10
  %30 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  ret %struct.csr1212_keyval* %30
}

declare dso_local %struct.csr1212_keyval* @csr1212_new_keyval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
