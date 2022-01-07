; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.__mem }
%struct.__mem = type { i32, i32 }

@QLCNIC_FLASH_LOCK = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@QLCNIC_FLASH_LOCK_OWNER = common dso_local global i32 0, align 4
@FLASH_ROM_WINDOW = common dso_local global i32 0, align 4
@FLASH_ROM_DATA = common dso_local global i32 0, align 4
@QLCNIC_FLASH_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_read_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_read_rom(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.__mem*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.__mem* %17, %struct.__mem** %14, align 8
  %18 = load %struct.__mem*, %struct.__mem** %14, align 8
  %19 = getelementptr inbounds %struct.__mem, %struct.__mem* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.__mem*, %struct.__mem** %14, align 8
  %22 = getelementptr inbounds %struct.__mem, %struct.__mem* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %35, %3
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %27 = load i32, i32* @QLCNIC_FLASH_LOCK, align 4
  %28 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_CTL_CHECK, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 @msleep(i32 10)
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %25

39:                                               ; preds = %31, %25
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = load i32, i32* @QLCNIC_FLASH_LOCK_OWNER, align 4
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %40, i32 %41, i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %72, %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, -65536
  store i32 %54, i32* %13, align 4
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = load i32, i32* @FLASH_ROM_WINDOW, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @LSW(i32 %59)
  %61 = load i32, i32* @FLASH_ROM_DATA, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %77 = load i32, i32* @QLCNIC_FLASH_UNLOCK, align 4
  %78 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %76, i32 %77)
  %79 = load %struct.__mem*, %struct.__mem** %14, align 8
  %80 = getelementptr inbounds %struct.__mem, %struct.__mem* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  ret i32 %81
}

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
