; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, i32, i32 }
%union.map_info = type { i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @stripe_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.stripe_c*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  store %struct.stripe_c* %13, %struct.stripe_c** %8, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BIO_FLUSH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %union.map_info*, %union.map_info** %7, align 8
  %22 = bitcast %union.map_info* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %26 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp uge i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %32 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %43, i32* %4, align 4
  br label %100

44:                                               ; preds = %3
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BIO_DISCARD, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %union.map_info*, %union.map_info** %7, align 8
  %54 = bitcast %union.map_info* %53 to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %58 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp uge i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %64 = load %struct.bio*, %struct.bio** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @stripe_map_discard(%struct.stripe_c* %63, %struct.bio* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %100

67:                                               ; preds = %44
  %68 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %69 = load %struct.bio*, %struct.bio** %6, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 2
  %74 = call i32 @stripe_map_sector(%struct.stripe_c* %68, i32 %71, i64* %9, i32* %73)
  %75 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %76 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bio*, %struct.bio** %6, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %89 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bio*, %struct.bio** %6, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %67, %52, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @stripe_map_discard(%struct.stripe_c*, %struct.bio*, i32) #1

declare dso_local i32 @stripe_map_sector(%struct.stripe_c*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
