; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_doc2000.c_DoC2k_is_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_doc2000.c_DoC2k_is_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DiskOnChip = type { i64, i32 }

@AliasResolution = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.DiskOnChip*, %struct.DiskOnChip*)* @DoC2k_is_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoC2k_is_alias(%struct.DiskOnChip* %0, %struct.DiskOnChip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DiskOnChip*, align 8
  %5 = alloca %struct.DiskOnChip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.DiskOnChip* %0, %struct.DiskOnChip** %4, align 8
  store %struct.DiskOnChip* %1, %struct.DiskOnChip** %5, align 8
  %9 = load %struct.DiskOnChip*, %struct.DiskOnChip** %4, align 8
  %10 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.DiskOnChip*, %struct.DiskOnChip** %5, align 8
  %13 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.DiskOnChip*, %struct.DiskOnChip** %4, align 8
  %19 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AliasResolution, align 4
  %22 = call i32 @ReadDOC(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.DiskOnChip*, %struct.DiskOnChip** %5, align 8
  %24 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AliasResolution, align 4
  %27 = call i32 @ReadDOC(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %61

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = srem i32 %34, 255
  %36 = load %struct.DiskOnChip*, %struct.DiskOnChip** %4, align 8
  %37 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AliasResolution, align 4
  %40 = call i32 @WriteDOC(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.DiskOnChip*, %struct.DiskOnChip** %5, align 8
  %42 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AliasResolution, align 4
  %45 = call i32 @ReadDOC(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = srem i32 %48, 255
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %53

52:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.DiskOnChip*, %struct.DiskOnChip** %4, align 8
  %56 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AliasResolution, align 4
  %59 = call i32 @WriteDOC(i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %31, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ReadDOC(i32, i32) #1

declare dso_local i32 @WriteDOC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
