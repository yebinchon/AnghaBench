; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_store_ntcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_store_ntcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vpe = type { i64 }

@tclimit = common dso_local global i64 0, align 8
@hw_tcs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ntcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ntcs(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vpe*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @tclimit, align 8
  %14 = call %struct.vpe* @get_vpe(i64 %13)
  store %struct.vpe* %14, %struct.vpe** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i8** %12, i32 0)
  store i64 %16, i64* %11, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %36

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @hw_tcs, align 8
  %27 = load i64, i64* @tclimit, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  br label %36

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.vpe*, %struct.vpe** %10, align 8
  %34 = getelementptr inbounds %struct.vpe, %struct.vpe* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %5, align 8
  br label %39

36:                                               ; preds = %30, %20
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.vpe* @get_vpe(i64) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
