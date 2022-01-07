; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_c = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_c*, i32, i32*, i32*)* @stripe_map_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_map_sector(%struct.stripe_c* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.stripe_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stripe_c* %0, %struct.stripe_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %12 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dm_target_offset(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %17 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %23 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @sector_div(i32 %21, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  br label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %30 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %28, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %35 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %27, %20
  %40 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %41 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %47 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @sector_div(i32 %45, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %65

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %55 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %53, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %61 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %52, %44
  %66 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %67 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %72 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %82

76:                                               ; preds = %65
  %77 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %78 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  ret void
}

declare dso_local i32 @dm_target_offset(i32, i32) #1

declare dso_local i8* @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
