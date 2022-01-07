; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @cfi_staa_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.map_info*, align 8
  %12 = alloca %struct.cfi_private*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.map_info*, %struct.map_info** %18, align 8
  store %struct.map_info* %19, %struct.map_info** %11, align 8
  %20 = load %struct.map_info*, %struct.map_info** %11, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 0
  %22 = load %struct.cfi_private*, %struct.cfi_private** %21, align 8
  store %struct.cfi_private* %22, %struct.cfi_private** %12, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %25 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %31 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %29, %32
  %34 = sub nsw i32 %28, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %13, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %83, %5
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %43 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %96

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %48, %49
  %51 = sub i64 %50, 1
  %52 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %53 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %51, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %60 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %16, align 8
  br label %68

66:                                               ; preds = %47
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %16, align 8
  br label %68

68:                                               ; preds = %66, %58
  %69 = load %struct.map_info*, %struct.map_info** %11, align 8
  %70 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %71 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @do_read_onechip(%struct.map_info* %69, i32* %75, i64 %76, i64 %77, i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %96

83:                                               ; preds = %68
  %84 = load i64, i64* %16, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %10, align 8
  store i64 0, i64* %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %37

96:                                               ; preds = %82, %46, %37
  %97 = load i32, i32* %15, align 4
  ret i32 %97
}

declare dso_local i32 @do_read_onechip(%struct.map_info*, i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
