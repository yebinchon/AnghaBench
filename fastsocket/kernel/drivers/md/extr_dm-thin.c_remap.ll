; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_2__*, %struct.pool* }
%struct.TYPE_2__ = type { i32 }
%struct.pool = type { i32, i32 }
%struct.bio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32)* @remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap(%struct.thin_c* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pool*, align 8
  %8 = alloca i32, align 4
  store %struct.thin_c* %0, %struct.thin_c** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 1
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %7, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %16 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pool*, %struct.pool** %7, align 8
  %23 = call i64 @block_size_is_power_of_two(%struct.pool* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pool*, %struct.pool** %7, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.pool*, %struct.pool** %7, align 8
  %33 = getelementptr inbounds %struct.pool, %struct.pool* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %31, %35
  %37 = or i32 %30, %36
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %54

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.pool*, %struct.pool** %7, align 8
  %43 = getelementptr inbounds %struct.pool, %struct.pool* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.pool*, %struct.pool** %7, align 8
  %48 = getelementptr inbounds %struct.pool, %struct.pool* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sector_div(i32 %46, i32 %49)
  %51 = add nsw i32 %45, %50
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %40, %25
  ret void
}

declare dso_local i64 @block_size_is_power_of_two(%struct.pool*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
