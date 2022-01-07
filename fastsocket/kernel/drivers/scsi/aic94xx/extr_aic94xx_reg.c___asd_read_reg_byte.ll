; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_reg.c___asd_read_reg_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_reg.c___asd_read_reg_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_ha_addrspace* }
%struct.asd_ha_addrspace = type { i32, i32, i32 }

@ALL_BASE_ADDR = common dso_local global i32 0, align 4
@MBAR0_SWA_SIZE = common dso_local global i32 0, align 4
@MBAR0_SWB_SIZE = common dso_local global i32 0, align 4
@MBAR0_SWC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @__asd_read_reg_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__asd_read_reg_byte(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_addrspace*, align 8
  %6 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %7, i32 0, i32 0
  %9 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %8, align 8
  %10 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %9, i64 0
  store %struct.asd_ha_addrspace* %10, %struct.asd_ha_addrspace** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp uge i32 %11, -1073741824
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ALL_BASE_ADDR, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %22 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %29 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MBAR0_SWA_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @asd_read_swa_byte(%struct.asd_ha_struct* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %83

38:                                               ; preds = %26, %17
  %39 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %40 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %47 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MBAR0_SWB_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @asd_read_swb_byte(%struct.asd_ha_struct* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %82

56:                                               ; preds = %44, %38
  %57 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %58 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %5, align 8
  %65 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MBAR0_SWC_SIZE, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @asd_read_swc_byte(%struct.asd_ha_struct* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %81

74:                                               ; preds = %62, %56
  %75 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @asd_move_swb(%struct.asd_ha_struct* %75, i32 %76)
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @asd_read_swb_byte(%struct.asd_ha_struct* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74, %70
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @asd_read_swa_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_read_swb_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_read_swc_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_move_swb(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
