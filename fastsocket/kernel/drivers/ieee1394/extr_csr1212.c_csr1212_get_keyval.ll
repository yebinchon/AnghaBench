; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_get_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_get_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32 }
%struct.csr1212_keyval = type { i32 }

@CSR1212_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csr1212_keyval* @csr1212_get_keyval(%struct.csr1212_csr* %0, %struct.csr1212_keyval* %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_csr*, align 8
  %5 = alloca %struct.csr1212_keyval*, align 8
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %4, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %5, align 8
  %6 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %7 = icmp ne %struct.csr1212_keyval* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %24

9:                                                ; preds = %2
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %11 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %16 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %17 = call i64 @csr1212_read_keyval(%struct.csr1212_csr* %15, %struct.csr1212_keyval* %16)
  %18 = load i64, i64* @CSR1212_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %3, align 8
  br label %24

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %9
  %23 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_keyval* %23, %struct.csr1212_keyval** %3, align 8
  br label %24

24:                                               ; preds = %22, %20, %8
  %25 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  ret %struct.csr1212_keyval* %25
}

declare dso_local i64 @csr1212_read_keyval(%struct.csr1212_csr*, %struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
