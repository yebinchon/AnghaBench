; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_ALARMS_FROM_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_ALARMS_FROM_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block1_t = type { i32, i32, i32, i32, i32, i32, i32 }

@vccp_limit_type = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block1_t*)* @LM93_ALARMS_FROM_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_ALARMS_FROM_REG(%struct.block1_t* byval(%struct.block1_t) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 63
  store i32 %5, i32* %2, align 4
  %6 = load i64*, i64** @vccp_limit_type, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 16
  %14 = shl i32 %13, 2
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 64
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %10
  %24 = load i64*, i64** @vccp_limit_type, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 32
  %32 = shl i32 %31, 2
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 128
  %39 = load i32, i32* %2, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %28
  %42 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %2, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %2, align 4
  %47 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %2, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %2, align 4
  %53 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 128
  %56 = shl i32 %55, 13
  %57 = load i32, i32* %2, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %2, align 4
  %59 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 128
  %62 = shl i32 %61, 14
  %63 = load i32, i32* %2, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %2, align 4
  %65 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 252
  %68 = shl i32 %67, 20
  %69 = load i32, i32* %2, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %2, align 4
  %71 = getelementptr inbounds %struct.block1_t, %struct.block1_t* %0, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 7
  %74 = shl i32 %73, 28
  %75 = load i32, i32* %2, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
