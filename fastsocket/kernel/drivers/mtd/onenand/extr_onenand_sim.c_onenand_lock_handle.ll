; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_lock_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_lock_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32 }

@ONENAND_HAS_CONT_LOCK = common dso_local global i32 0, align 4
@ONENAND_WP_US = common dso_local global i32 0, align 4
@ONENAND_WP_LS = common dso_local global i32 0, align 4
@ONENAND_WP_LTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.onenand_chip*, i32)* @onenand_lock_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_lock_handle(%struct.onenand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %8 = call i32 @ONENAND_GET_WP_STATUS(%struct.onenand_chip* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ONENAND_HAS_CONT_LOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %60 [
    i32 129, label %18
    i32 128, label %18
    i32 131, label %32
    i32 130, label %46
  ]

18:                                               ; preds = %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @ONENAND_WP_US, align 4
  %23 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %24 = call i32 @ONENAND_SET_WP_STATUS(i32 %22, %struct.onenand_chip* %23)
  br label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ONENAND_WP_US, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %30 = call i32 @ONENAND_SET_WP_STATUS(i32 %28, %struct.onenand_chip* %29)
  br label %31

31:                                               ; preds = %25, %21
  br label %61

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @ONENAND_WP_LS, align 4
  %37 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %38 = call i32 @ONENAND_SET_WP_STATUS(i32 %36, %struct.onenand_chip* %37)
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ONENAND_WP_LS, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %44 = call i32 @ONENAND_SET_WP_STATUS(i32 %42, %struct.onenand_chip* %43)
  br label %45

45:                                               ; preds = %39, %35
  br label %61

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @ONENAND_WP_LTS, align 4
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %52 = call i32 @ONENAND_SET_WP_STATUS(i32 %50, %struct.onenand_chip* %51)
  br label %59

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ONENAND_WP_LTS, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %58 = call i32 @ONENAND_SET_WP_STATUS(i32 %56, %struct.onenand_chip* %57)
  br label %59

59:                                               ; preds = %53, %49
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %59, %45, %31
  ret void
}

declare dso_local i32 @ONENAND_GET_WP_STATUS(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_WP_STATUS(i32, %struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
