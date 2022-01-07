; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @cfi_staa_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_suspend(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %10, %struct.map_info** %3, align 8
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  store %struct.cfi_private* %13, %struct.cfi_private** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %20 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %59

25:                                               ; preds = %23
  %26 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %27 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %26, i32 0, i32 1
  %28 = load %struct.flchip*, %struct.flchip** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i64 %30
  store %struct.flchip* %31, %struct.flchip** %6, align 8
  %32 = load %struct.flchip*, %struct.flchip** %6, align 8
  %33 = getelementptr inbounds %struct.flchip, %struct.flchip* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spin_lock_bh(i32 %34)
  %36 = load %struct.flchip*, %struct.flchip** %6, align 8
  %37 = getelementptr inbounds %struct.flchip, %struct.flchip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %48 [
    i32 129, label %39
    i32 128, label %39
    i32 132, label %39
    i32 131, label %39
    i32 130, label %47
  ]

39:                                               ; preds = %25, %25, %25, %25
  %40 = load %struct.flchip*, %struct.flchip** %6, align 8
  %41 = getelementptr inbounds %struct.flchip, %struct.flchip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.flchip*, %struct.flchip** %6, align 8
  %44 = getelementptr inbounds %struct.flchip, %struct.flchip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.flchip*, %struct.flchip** %6, align 8
  %46 = getelementptr inbounds %struct.flchip, %struct.flchip* %45, i32 0, i32 0
  store i32 130, i32* %46, align 4
  br label %47

47:                                               ; preds = %25, %39
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.flchip*, %struct.flchip** %6, align 8
  %53 = getelementptr inbounds %struct.flchip, %struct.flchip* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @spin_unlock_bh(i32 %54)
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %14

59:                                               ; preds = %23
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %97, %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %70 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %69, i32 0, i32 1
  %71 = load %struct.flchip*, %struct.flchip** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.flchip, %struct.flchip* %71, i64 %73
  store %struct.flchip* %74, %struct.flchip** %6, align 8
  %75 = load %struct.flchip*, %struct.flchip** %6, align 8
  %76 = getelementptr inbounds %struct.flchip, %struct.flchip* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @spin_lock_bh(i32 %77)
  %79 = load %struct.flchip*, %struct.flchip** %6, align 8
  %80 = getelementptr inbounds %struct.flchip, %struct.flchip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 130
  br i1 %82, label %83, label %92

83:                                               ; preds = %68
  %84 = load %struct.flchip*, %struct.flchip** %6, align 8
  %85 = getelementptr inbounds %struct.flchip, %struct.flchip* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.flchip*, %struct.flchip** %6, align 8
  %88 = getelementptr inbounds %struct.flchip, %struct.flchip* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.flchip*, %struct.flchip** %6, align 8
  %90 = getelementptr inbounds %struct.flchip, %struct.flchip* %89, i32 0, i32 3
  %91 = call i32 @wake_up(i32* %90)
  br label %92

92:                                               ; preds = %83, %68
  %93 = load %struct.flchip*, %struct.flchip** %6, align 8
  %94 = getelementptr inbounds %struct.flchip, %struct.flchip* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @spin_unlock_bh(i32 %95)
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %5, align 4
  br label %65

100:                                              ; preds = %65
  br label %101

101:                                              ; preds = %100, %59
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
