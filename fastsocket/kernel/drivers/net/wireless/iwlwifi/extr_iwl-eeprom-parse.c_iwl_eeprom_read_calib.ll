; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_eeprom_read_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_eeprom_read_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { i32, i32 }
%struct.iwl_eeprom_calib_hdr = type { i32, i32 }

@EEPROM_CALIB_ALL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.iwl_nvm_data*)* @iwl_eeprom_read_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_eeprom_read_calib(i32* %0, i64 %1, %struct.iwl_nvm_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_nvm_data*, align 8
  %8 = alloca %struct.iwl_eeprom_calib_hdr*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @EEPROM_CALIB_ALL, align 4
  %12 = call i64 @iwl_eeprom_query_addr(i32* %9, i64 %10, i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_eeprom_calib_hdr*
  store %struct.iwl_eeprom_calib_hdr* %14, %struct.iwl_eeprom_calib_hdr** %8, align 8
  %15 = load %struct.iwl_eeprom_calib_hdr*, %struct.iwl_eeprom_calib_hdr** %8, align 8
  %16 = icmp ne %struct.iwl_eeprom_calib_hdr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.iwl_eeprom_calib_hdr*, %struct.iwl_eeprom_calib_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_eeprom_calib_hdr, %struct.iwl_eeprom_calib_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iwl_eeprom_calib_hdr*, %struct.iwl_eeprom_calib_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_eeprom_calib_hdr, %struct.iwl_eeprom_calib_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @iwl_eeprom_query_addr(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
