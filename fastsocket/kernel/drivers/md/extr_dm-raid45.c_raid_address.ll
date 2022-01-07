; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.raid_address = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid_address* (%struct.raid_set*, i32, %struct.raid_address*)* @raid_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid_address* @raid_address(%struct.raid_set* %0, i32 %1, %struct.raid_address* %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.raid_address*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.raid_address* %2, %struct.raid_address** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %9, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %17 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @sector_div(i32 %15, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %23 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %110 [
    i32 131, label %30
    i32 130, label %37
  ]

30:                                               ; preds = %3
  %31 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %32 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %36 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %66

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %41 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @sector_div(i32 %39, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %47 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %109 [
    i32 134, label %54
    i32 129, label %65
    i32 133, label %80
    i32 128, label %91
    i32 132, label %107
  ]

54:                                               ; preds = %37
  %55 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %56 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %60 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %64 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %37, %54
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %68 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %71 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %76 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %66
  br label %109

80:                                               ; preds = %37
  %81 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %82 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %86 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %90 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %37, %80
  %92 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %93 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %96 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = add nsw i32 %98, 1
  %100 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %101 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = srem i32 %99, %103
  %105 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %106 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %109

107:                                              ; preds = %37
  %108 = call i32 (...) @BUG()
  br label %109

109:                                              ; preds = %107, %37, %91, %79
  br label %110

110:                                              ; preds = %109, %3
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %113 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %111, %115
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %119 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %117, %121
  %123 = add nsw i32 %116, %122
  %124 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  %125 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.raid_address*, %struct.raid_address** %6, align 8
  ret %struct.raid_address* %126
}

declare dso_local i8* @sector_div(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
