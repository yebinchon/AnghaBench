; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i64, i64, i32*, i32*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@csr1212_key_id_type_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_keyval* (i32, i32)* @csr1212_new_keyval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_keyval* @csr1212_new_keyval(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.csr1212_keyval*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 48
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32*, i32** @csr1212_key_id_type_map, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %48

20:                                               ; preds = %9, %2
  %21 = call %struct.csr1212_keyval* @CSR1212_MALLOC(i32 56)
  store %struct.csr1212_keyval* %21, %struct.csr1212_keyval** %6, align 8
  %22 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %23 = icmp ne %struct.csr1212_keyval* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %48

25:                                               ; preds = %20
  %26 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %27 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %26, i32 0, i32 6
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %31 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %35 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %38 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %40 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %42 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %44 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %46 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %47, %struct.csr1212_keyval** %3, align 8
  br label %48

48:                                               ; preds = %25, %24, %19
  %49 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  ret %struct.csr1212_keyval* %49
}

declare dso_local %struct.csr1212_keyval* @CSR1212_MALLOC(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
