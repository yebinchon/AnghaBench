; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_host_xlate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_host_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i32 }
%struct.device_node = type { i32 }

@mpic_host_xlate.map_mpic_senses = internal global [4 x i8] c"\82\80\81\83", align 1
@powermac = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"mpic: xlate (%d cells: 0x%08x 0x%08x) to line 0x%lx sense 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_host*, %struct.device_node*, i64*, i32, i64*, i32*)* @mpic_host_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_host_xlate(%struct.irq_host* %0, %struct.device_node* %1, i64* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.irq_host*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.irq_host* %0, %struct.irq_host** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %11, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %6
  store i64 3, i64* %13, align 8
  %21 = load i32, i32* @powermac, align 4
  %22 = call i64 @machine_is(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 1, i64* %13, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = and i64 %28, %29
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* @mpic_host_xlate.map_mpic_senses, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %6
  %36 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* %10, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DBG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i64 %45, i64 %47, i32 %49)
  ret i32 0
}

declare dso_local i64 @machine_is(i32) #1

declare dso_local i32 @DBG(i8*, i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
