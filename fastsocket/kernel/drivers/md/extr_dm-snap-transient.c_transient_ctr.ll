; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-transient.c_transient_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-transient.c_transient_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { %struct.transient_c* }
%struct.transient_c = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i32, i8**)* @transient_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transient_ctr(%struct.dm_exception_store* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.transient_c*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.transient_c* @kmalloc(i32 8, i32 %9)
  store %struct.transient_c* %10, %struct.transient_c** %8, align 8
  %11 = load %struct.transient_c*, %struct.transient_c** %8, align 8
  %12 = icmp ne %struct.transient_c* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.transient_c*, %struct.transient_c** %8, align 8
  %18 = getelementptr inbounds %struct.transient_c, %struct.transient_c* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.transient_c*, %struct.transient_c** %8, align 8
  %20 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %21 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %20, i32 0, i32 0
  store %struct.transient_c* %19, %struct.transient_c** %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.transient_c* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
