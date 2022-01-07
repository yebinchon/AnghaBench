; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_free_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_free_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.csr1212_keyval* }
%struct.TYPE_4__ = type { i64, i64 }

@CSR1212_KV_TYPE_LEAF = common dso_local global i64 0, align 8
@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csr1212_keyval*)* @free_keyval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_keyval(%struct.csr1212_keyval* %0) #0 {
  %2 = alloca %struct.csr1212_keyval*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %2, align 8
  %3 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %4 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CSR1212_KV_TYPE_LEAF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %11 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CSR1212_KV_ID_EXTENDED_ROM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %18 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %20, align 8
  %22 = call i32 @CSR1212_FREE(%struct.csr1212_keyval* %21)
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %25 = call i32 @CSR1212_FREE(%struct.csr1212_keyval* %24)
  ret void
}

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
