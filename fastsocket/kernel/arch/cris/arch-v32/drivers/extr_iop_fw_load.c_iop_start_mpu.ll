; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_iop_fw_load.c_iop_start_mpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_iop_fw_load.c_iop_start_mpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@regk_iop_mpu_yes = common dso_local global i32 0, align 4
@iop_mpu = common dso_local global i32 0, align 4
@regi_iop_mpu = common dso_local global i32 0, align 4
@rw_instr = common dso_local global i32 0, align 4
@rw_ctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_start_mpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %8 = load i32, i32* @regk_iop_mpu_yes, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (...) @wait_mpu_idle()
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* @iop_mpu, align 4
  %14 = load i32, i32* @regi_iop_mpu, align 4
  %15 = load i32, i32* @rw_instr, align 4
  %16 = call i32 (...) @MPU_HALT()
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REG_WR(i32 %13, i32 %14, i32 %15, i32 %19)
  %21 = call i32 (...) @wait_mpu_idle()
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %57

24:                                               ; preds = %12
  %25 = call i32 (...) @wait_mpu_idle()
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %57

28:                                               ; preds = %24
  %29 = load i32, i32* @iop_mpu, align 4
  %30 = load i32, i32* @regi_iop_mpu, align 4
  %31 = load i32, i32* @rw_instr, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @MPU_BA_I(i32 %32)
  %34 = call i32 @REG_WR_INT(i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = call i32 (...) @wait_mpu_idle()
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %57

38:                                               ; preds = %28
  %39 = load i32, i32* @iop_mpu, align 4
  %40 = load i32, i32* @regi_iop_mpu, align 4
  %41 = load i32, i32* @rw_instr, align 4
  %42 = call i32 (...) @MPU_DI()
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_WR(i32 %39, i32 %40, i32 %41, i32 %45)
  %47 = call i32 (...) @wait_mpu_idle()
  store i32 %47, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* @iop_mpu, align 4
  %52 = load i32, i32* @regi_iop_mpu, align 4
  %53 = load i32, i32* @rw_ctrl, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_WR(i32 %51, i32 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %50, %49, %37, %27, %23, %11
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @wait_mpu_idle(...) #1

declare dso_local i32 @REG_WR(i32, i32, i32, i32) #1

declare dso_local i32 @MPU_HALT(...) #1

declare dso_local i32 @REG_WR_INT(i32, i32, i32, i32) #1

declare dso_local i32 @MPU_BA_I(i32) #1

declare dso_local i32 @MPU_DI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
