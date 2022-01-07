; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_manage.c_init_affinity_qs20_harcoded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_manage.c_init_affinity_qs20_harcoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32, i32 }

@MAX_NUMNODES = common dso_local global i32 0, align 4
@QS20_SPES_PER_BE = common dso_local global i32 0, align 4
@qs20_reg_idxs = common dso_local global i64* null, align 8
@qs20_reg_memory = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_affinity_qs20_harcoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_affinity_qs20_harcoded() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu*, align 8
  %4 = alloca %struct.spu*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %48, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @MAX_NUMNODES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  store %struct.spu* null, %struct.spu** %3, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %44, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @QS20_SPES_PER_BE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i64*, i64** @qs20_reg_idxs, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.spu* @spu_lookup_reg(i32 %21, i64 %22)
  store %struct.spu* %23, %struct.spu** %4, align 8
  %24 = load %struct.spu*, %struct.spu** %4, align 8
  %25 = icmp ne %struct.spu* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %44

27:                                               ; preds = %15
  %28 = load i32*, i32** @qs20_reg_memory, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.spu*, %struct.spu** %4, align 8
  %33 = getelementptr inbounds %struct.spu, %struct.spu* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.spu*, %struct.spu** %3, align 8
  %35 = icmp ne %struct.spu* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.spu*, %struct.spu** %4, align 8
  %38 = getelementptr inbounds %struct.spu, %struct.spu* %37, i32 0, i32 0
  %39 = load %struct.spu*, %struct.spu** %3, align 8
  %40 = getelementptr inbounds %struct.spu, %struct.spu* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %36, %27
  %43 = load %struct.spu*, %struct.spu** %4, align 8
  store %struct.spu* %43, %struct.spu** %3, align 8
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %11

47:                                               ; preds = %11
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

declare dso_local %struct.spu* @spu_lookup_reg(i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
