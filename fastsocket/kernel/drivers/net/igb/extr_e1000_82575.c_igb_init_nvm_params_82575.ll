; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_nvm_params_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_nvm_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_nvm_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i64 0, align 8
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@igb_acquire_nvm_82575 = common dso_local global i32 0, align 4
@igb_release_nvm_82575 = common dso_local global i32 0, align 4
@igb_write_nvm_spi = common dso_local global i32 0, align 4
@igb_validate_nvm_checksum = common dso_local global i32 0, align 4
@igb_update_nvm_checksum = common dso_local global i32 0, align 4
@igb_read_nvm_eerd = common dso_local global i32 0, align 4
@igb_read_nvm_spi = common dso_local global i32 0, align 4
@igb_validate_nvm_checksum_82580 = common dso_local global i32 0, align 4
@igb_update_nvm_checksum_82580 = common dso_local global i32 0, align 4
@igb_validate_nvm_checksum_i350 = common dso_local global i32 0, align 4
@igb_update_nvm_checksum_i350 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @igb_init_nvm_params_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_init_nvm_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_nvm_info* %7, %struct.e1000_nvm_info** %3, align 8
  %8 = load i32, i32* @E1000_EECD, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 15, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %28, i32 0, i32 1
  store i32 8, i32* %29, align 4
  %30 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %45 [
    i32 129, label %35
    i32 128, label %40
  ]

35:                                               ; preds = %23
  %36 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %36, i32 0, i32 4
  store i32 32, i32* %37, align 4
  %38 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %38, i32 0, i32 5
  store i32 16, i32* %39, align 4
  br label %62

40:                                               ; preds = %23
  %41 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %41, i32 0, i32 4
  store i32 8, i32* %42, align 4
  %43 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %43, i32 0, i32 5
  store i32 8, i32* %44, align 4
  br label %62

45:                                               ; preds = %23
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 32, i32 8
  %52 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 16, i32 8
  %60 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %45, %40, %35
  %63 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 32768
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %68, i32 0, i32 4
  store i32 128, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %72 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @igb_acquire_nvm_82575, align 4
  %75 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @igb_release_nvm_82575, align 4
  %79 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @igb_write_nvm_spi, align 4
  %83 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @igb_validate_nvm_checksum, align 4
  %87 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @igb_update_nvm_checksum, align 4
  %91 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 32768
  br i1 %97, label %98, label %103

98:                                               ; preds = %70
  %99 = load i32, i32* @igb_read_nvm_eerd, align 4
  %100 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  br label %108

103:                                              ; preds = %70
  %104 = load i32, i32* @igb_read_nvm_spi, align 4
  %105 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %131 [
    i32 132, label %113
    i32 130, label %122
    i32 131, label %122
  ]

113:                                              ; preds = %108
  %114 = load i32, i32* @igb_validate_nvm_checksum_82580, align 4
  %115 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @igb_update_nvm_checksum_82580, align 4
  %119 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  br label %132

122:                                              ; preds = %108, %108
  %123 = load i32, i32* @igb_validate_nvm_checksum_i350, align 4
  %124 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @igb_update_nvm_checksum_i350, align 4
  %128 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %129 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  br label %132

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131, %122, %113
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
