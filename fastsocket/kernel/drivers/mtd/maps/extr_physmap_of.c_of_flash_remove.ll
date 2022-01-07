; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_physmap_of.c_of_flash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_physmap_of.c_of_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.of_flash = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.of_flash*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @of_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_flash_remove(%struct.of_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_device*, align 8
  %4 = alloca %struct.of_flash*, align 8
  %5 = alloca i32, align 4
  store %struct.of_device* %0, %struct.of_device** %3, align 8
  %6 = load %struct.of_device*, %struct.of_device** %3, align 8
  %7 = getelementptr inbounds %struct.of_device, %struct.of_device* %6, i32 0, i32 0
  %8 = call %struct.of_flash* @dev_get_drvdata(i32* %7)
  store %struct.of_flash* %8, %struct.of_flash** %4, align 8
  %9 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %10 = icmp ne %struct.of_flash* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

12:                                               ; preds = %1
  %13 = load %struct.of_device*, %struct.of_device** %3, align 8
  %14 = getelementptr inbounds %struct.of_device, %struct.of_device* %13, i32 0, i32 0
  %15 = call i32 @dev_set_drvdata(i32* %14, i32* null)
  %16 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %17 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %22 = call %struct.of_flash* @OF_FLASH_PARTS(%struct.of_flash* %21)
  %23 = icmp ne %struct.of_flash* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %26 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @del_mtd_partitions(i64 %27)
  %29 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %30 = call %struct.of_flash* @OF_FLASH_PARTS(%struct.of_flash* %29)
  %31 = call i32 @kfree(%struct.of_flash* %30)
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %34 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @del_mtd_device(i64 %35)
  br label %37

37:                                               ; preds = %32, %24
  br label %38

38:                                               ; preds = %37, %12
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %117, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %42 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %120

45:                                               ; preds = %39
  %46 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %47 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %57 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @map_destroy(i64 %63)
  br label %65

65:                                               ; preds = %55, %45
  %66 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %67 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %65
  %77 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %78 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @iounmap(i64 %85)
  br label %87

87:                                               ; preds = %76, %65
  %88 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %89 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.of_flash*, %struct.of_flash** %94, align 8
  %96 = icmp ne %struct.of_flash* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %87
  %98 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %99 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load %struct.of_flash*, %struct.of_flash** %104, align 8
  %106 = call i32 @release_resource(%struct.of_flash* %105)
  %107 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %108 = getelementptr inbounds %struct.of_flash, %struct.of_flash* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load %struct.of_flash*, %struct.of_flash** %113, align 8
  %115 = call i32 @kfree(%struct.of_flash* %114)
  br label %116

116:                                              ; preds = %97, %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %39

120:                                              ; preds = %39
  %121 = load %struct.of_flash*, %struct.of_flash** %4, align 8
  %122 = call i32 @kfree(%struct.of_flash* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %120, %11
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.of_flash* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local %struct.of_flash* @OF_FLASH_PARTS(%struct.of_flash*) #1

declare dso_local i32 @del_mtd_partitions(i64) #1

declare dso_local i32 @kfree(%struct.of_flash*) #1

declare dso_local i32 @del_mtd_device(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_resource(%struct.of_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
