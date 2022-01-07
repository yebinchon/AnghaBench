; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_inject_eccmask_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_inject_eccmask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i8*, i64)* @i7core_inject_eccmask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i7core_inject_eccmask_store(%struct.mem_ctl_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i7core_pvt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.i7core_pvt*, %struct.i7core_pvt** %12, align 8
  store %struct.i7core_pvt* %13, %struct.i7core_pvt** %8, align 8
  %14 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %15 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %21 = call i32 @disable_inject(%struct.mem_ctl_info* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strict_strtoul(i8* %23, i32 10, i64* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @EIO, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %33 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i32 @disable_inject(%struct.mem_ctl_info*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
