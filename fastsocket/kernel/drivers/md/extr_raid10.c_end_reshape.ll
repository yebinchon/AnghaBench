; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, %struct.TYPE_8__*, %struct.TYPE_5__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @end_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_reshape(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %4 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %5 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %6 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %4, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %17 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %16, i32 0, i32 5
  %18 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_5__* %17 to i8*
  %21 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @md_finish_reshape(%struct.TYPE_8__* %24)
  %26 = call i32 (...) @smp_wmb()
  %27 = load i32, i32* @MaxSector, align 4
  %28 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %31 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %30, i32 0, i32 3
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %12
  %40 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %45 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 9
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sdiv i32 %49, %50
  %52 = mul nsw i32 %43, %51
  store i32 %52, i32* %3, align 4
  %53 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %54 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sdiv i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %60 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = mul nsw i32 2, %67
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %39
  %71 = load i32, i32* %3, align 4
  %72 = mul nsw i32 2, %71
  %73 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %74 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %39
  br label %81

81:                                               ; preds = %80, %12
  %82 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %83 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @md_finish_reshape(%struct.TYPE_8__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
