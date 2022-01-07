; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_msi.c_mpic_msi_init_allocator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_msi.c_mpic_msi_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MPIC_U3_HT_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpic_msi_init_allocator(%struct.mpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  %5 = load %struct.mpic*, %struct.mpic** %3, align 8
  %6 = getelementptr inbounds %struct.mpic, %struct.mpic* %5, i32 0, i32 1
  %7 = load %struct.mpic*, %struct.mpic** %3, align 8
  %8 = getelementptr inbounds %struct.mpic, %struct.mpic* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mpic*, %struct.mpic** %3, align 8
  %11 = getelementptr inbounds %struct.mpic, %struct.mpic* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @msi_bitmap_alloc(i32* %6, i32 %9, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.mpic*, %struct.mpic** %3, align 8
  %22 = getelementptr inbounds %struct.mpic, %struct.mpic* %21, i32 0, i32 1
  %23 = call i32 @msi_bitmap_reserve_dt_hwirqs(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.mpic*, %struct.mpic** %3, align 8
  %28 = getelementptr inbounds %struct.mpic, %struct.mpic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MPIC_U3_HT_IRQS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.mpic*, %struct.mpic** %3, align 8
  %35 = call i32 @mpic_msi_reserve_u3_hwirqs(%struct.mpic* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.mpic*, %struct.mpic** %3, align 8
  %41 = getelementptr inbounds %struct.mpic, %struct.mpic* %40, i32 0, i32 1
  %42 = call i32 @msi_bitmap_free(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %20
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @msi_bitmap_alloc(i32*, i32, i32) #1

declare dso_local i32 @msi_bitmap_reserve_dt_hwirqs(i32*) #1

declare dso_local i32 @mpic_msi_reserve_u3_hwirqs(%struct.mpic*) #1

declare dso_local i32 @msi_bitmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
