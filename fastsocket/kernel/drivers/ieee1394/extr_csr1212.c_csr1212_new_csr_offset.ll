; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_csr_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_new_csr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CSR1212_KV_TYPE_CSR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csr1212_keyval* (i32, i32)* @csr1212_new_csr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csr1212_keyval* @csr1212_new_csr_offset(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.csr1212_keyval*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CSR1212_KV_TYPE_CSR_OFFSET, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.csr1212_keyval* @csr1212_new_keyval(i32 %7, i32 %8)
  store %struct.csr1212_keyval* %9, %struct.csr1212_keyval** %6, align 8
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %11 = icmp ne %struct.csr1212_keyval* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %16 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %19 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %21 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %22, %struct.csr1212_keyval** %3, align 8
  br label %23

23:                                               ; preds = %13, %12
  %24 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  ret %struct.csr1212_keyval* %24
}

declare dso_local %struct.csr1212_keyval* @csr1212_new_keyval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
