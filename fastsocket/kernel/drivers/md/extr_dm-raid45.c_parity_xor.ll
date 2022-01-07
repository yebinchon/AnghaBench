; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_parity_xor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_parity_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.raid_set = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.raid_address = type { i32 }

@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @parity_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parity_xor(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_address, align 4
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %10 = load %struct.stripe*, %struct.stripe** %2, align 8
  %11 = getelementptr inbounds %struct.stripe, %struct.stripe* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.raid_set* @RS(i32 %12)
  store %struct.raid_set* %13, %struct.raid_set** %3, align 8
  %14 = load %struct.stripe*, %struct.stripe** %2, align 8
  %15 = getelementptr inbounds %struct.stripe, %struct.stripe* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %19 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %17, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.stripe*, %struct.stripe** %2, align 8
  %29 = getelementptr inbounds %struct.stripe, %struct.stripe* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %90, %39
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %51 = load %struct.stripe*, %struct.stripe** %2, align 8
  %52 = getelementptr inbounds %struct.stripe, %struct.stripe* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %53, %54
  %56 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %57 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %55, %59
  %61 = call i32 @raid_address(%struct.raid_set* %50, i32 %60, %struct.raid_address* %9)
  %62 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.stripe*, %struct.stripe** %2, align 8
  %65 = getelementptr inbounds %struct.stripe, %struct.stripe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.stripe*, %struct.stripe** %2, align 8
  %68 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @stripe_zero_pl_part(%struct.stripe* %67, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %49, %45
  %74 = load %struct.stripe*, %struct.stripe** %2, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.stripe*, %struct.stripe** %2, align 8
  %78 = getelementptr inbounds %struct.stripe, %struct.stripe* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @common_xor(%struct.stripe* %74, i32 %75, i32 %76, i32 %80)
  %82 = load %struct.stripe*, %struct.stripe** %2, align 8
  %83 = load %struct.stripe*, %struct.stripe** %2, align 8
  %84 = getelementptr inbounds %struct.stripe, %struct.stripe* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CHUNK(%struct.stripe* %82, i32 %86)
  %88 = load i32, i32* @DIRTY, align 4
  %89 = call i32 @chunk_set(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %41

94:                                               ; preds = %41
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raid_address(%struct.raid_set*, i32, %struct.raid_address*) #1

declare dso_local i32 @stripe_zero_pl_part(%struct.stripe*, i32, i32, i32) #1

declare dso_local i32 @common_xor(%struct.stripe*, i32, i32, i32) #1

declare dso_local i32 @chunk_set(i32, i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
