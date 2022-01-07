; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32)* @cfi_staa_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_lock(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.map_info*, align 8
  %9 = alloca %struct.cfi_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 2
  %15 = load %struct.map_info*, %struct.map_info** %14, align 8
  store %struct.map_info* %15, %struct.map_info** %8, align 8
  %16 = load %struct.map_info*, %struct.map_info** %8, align 8
  %17 = getelementptr inbounds %struct.map_info, %struct.map_info* %16, i32 0, i32 0
  %18 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  store %struct.cfi_private* %18, %struct.cfi_private** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %113

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %113

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %113

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %54 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %60 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %58, %61
  %63 = sub nsw i32 %57, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %111, %51
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %112

68:                                               ; preds = %65
  %69 = load %struct.map_info*, %struct.map_info** %8, align 8
  %70 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %71 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @do_lock_oneblock(%struct.map_info* %69, i32* %75, i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %113

82:                                               ; preds = %68
  %83 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %90 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %96 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = lshr i64 %94, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %82
  store i64 0, i64* %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %106 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %112

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %82
  br label %65

112:                                              ; preds = %109, %65
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %80, %48, %37, %26
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @do_lock_oneblock(%struct.map_info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
