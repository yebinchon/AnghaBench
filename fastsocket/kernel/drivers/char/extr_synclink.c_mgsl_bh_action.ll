; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_bh_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_bh_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i32, i32 }

@BH_RECEIVE = common dso_local global i32 0, align 4
@BH_TRANSMIT = common dso_local global i32 0, align 4
@BH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_bh_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_bh_action(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BH_RECEIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @BH_RECEIVE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @BH_RECEIVE, align 4
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %25 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BH_TRANSMIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @BH_TRANSMIT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %34 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BH_TRANSMIT, align 4
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %23
  %39 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %40 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BH_STATUS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @BH_STATUS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %49 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @BH_STATUS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %38
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %60 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %62 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %65 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %64, i32 0, i32 3
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
