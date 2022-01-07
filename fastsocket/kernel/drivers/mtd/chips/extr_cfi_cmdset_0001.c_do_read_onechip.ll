; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_do_read_onechip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_do_read_onechip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32 }
%struct.flchip = type { i64, i32, i64 }

@FL_READY = common dso_local global i64 0, align 8
@FL_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i32, i64, i32*)* @do_read_onechip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_onechip(%struct.map_info* %0, %struct.flchip* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca %struct.flchip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cfi_private*, align 8
  %14 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %7, align 8
  store %struct.flchip* %1, %struct.flchip** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.map_info*, %struct.map_info** %7, align 8
  %16 = getelementptr inbounds %struct.map_info, %struct.map_info* %15, i32 0, i32 0
  %17 = load %struct.cfi_private*, %struct.cfi_private** %16, align 8
  store %struct.cfi_private* %17, %struct.cfi_private** %13, align 8
  %18 = load %struct.flchip*, %struct.flchip** %8, align 8
  %19 = getelementptr inbounds %struct.flchip, %struct.flchip* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.map_info*, %struct.map_info** %7, align 8
  %27 = call i32 @map_bankwidth(%struct.map_info* %26)
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.flchip*, %struct.flchip** %8, align 8
  %33 = getelementptr inbounds %struct.flchip, %struct.flchip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @spin_lock(i32 %34)
  %36 = load %struct.map_info*, %struct.map_info** %7, align 8
  %37 = load %struct.flchip*, %struct.flchip** %8, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @FL_READY, align 8
  %40 = call i32 @get_chip(%struct.map_info* %36, %struct.flchip* %37, i64 %38, i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %5
  %44 = load %struct.flchip*, %struct.flchip** %8, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @spin_unlock(i32 %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %83

49:                                               ; preds = %5
  %50 = load %struct.flchip*, %struct.flchip** %8, align 8
  %51 = getelementptr inbounds %struct.flchip, %struct.flchip* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FL_POINT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.flchip*, %struct.flchip** %8, align 8
  %57 = getelementptr inbounds %struct.flchip, %struct.flchip* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FL_READY, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.map_info*, %struct.map_info** %7, align 8
  %63 = call i32 @CMD(i32 255)
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @map_write(%struct.map_info* %62, i32 %63, i64 %64)
  %66 = load i64, i64* @FL_READY, align 8
  %67 = load %struct.flchip*, %struct.flchip** %8, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %55, %49
  %70 = load %struct.map_info*, %struct.map_info** %7, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @map_copy_from(%struct.map_info* %70, i32* %71, i32 %72, i64 %73)
  %75 = load %struct.map_info*, %struct.map_info** %7, align 8
  %76 = load %struct.flchip*, %struct.flchip** %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @put_chip(%struct.map_info* %75, %struct.flchip* %76, i64 %77)
  %79 = load %struct.flchip*, %struct.flchip** %8, align 8
  %80 = getelementptr inbounds %struct.flchip, %struct.flchip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @spin_unlock(i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %69, %43
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @map_copy_from(%struct.map_info*, i32*, i32, i64) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
