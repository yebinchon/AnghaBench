; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_id_led_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_id_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32, i32 }

@E1000_LEDCTL_MODE_LED_ON = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"e1000_id_led_init\00", align 1
@e1000_82540 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@EEPROM_ID_LED_SETTINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@ID_LED_RESERVED_0000 = common dso_local global i32 0, align 4
@ID_LED_RESERVED_FFFF = common dso_local global i32 0, align 4
@ID_LED_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_id_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_id_led_init(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 255, i32* %5, align 4
  %12 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @E1000_LEDCTL_MODE_LED_OFF, align 4
  store i32 %13, i32* %7, align 4
  store i32 15, i32* %11, align 4
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_82540, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %21, i32* %2, align 4
  br label %145

22:                                               ; preds = %1
  %23 = load i32, i32* @LEDCTL, align 4
  %24 = call i32 @er32(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = load i32, i32* @EEPROM_ID_LED_SETTINGS, align 4
  %40 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %38, i32 %39, i32 1, i32* %8)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  %43 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %145

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ID_LED_RESERVED_0000, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ID_LED_RESERVED_FFFF, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @ID_LED_DEFAULT, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %50
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %140, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %143

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 2
  %64 = ashr i32 %61, %63
  %65 = and i32 %64, 15
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %101 [
    i32 130, label %67
    i32 128, label %67
    i32 129, label %67
    i32 133, label %84
    i32 131, label %84
    i32 132, label %84
  ]

67:                                               ; preds = %60, %60, %60
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 3
  %70 = shl i32 255, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 3
  %79 = shl i32 %76, %78
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %102

84:                                               ; preds = %60, %60, %60
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 3
  %87 = shl i32 255, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 3
  %96 = shl i32 %93, %95
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %102

101:                                              ; preds = %60
  br label %102

102:                                              ; preds = %101, %84, %67
  %103 = load i32, i32* %10, align 4
  switch i32 %103, label %138 [
    i32 134, label %104
    i32 128, label %104
    i32 131, label %104
    i32 135, label %121
    i32 129, label %121
    i32 132, label %121
  ]

104:                                              ; preds = %102, %102, %102
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %105, 3
  %107 = shl i32 255, %106
  %108 = xor i32 %107, -1
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 %114, 3
  %116 = shl i32 %113, %115
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %139

121:                                              ; preds = %102, %102, %102
  %122 = load i32, i32* %9, align 4
  %123 = shl i32 %122, 3
  %124 = shl i32 255, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = shl i32 %131, 3
  %133 = shl i32 %130, %132
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %139

138:                                              ; preds = %102
  br label %139

139:                                              ; preds = %138, %121, %104
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %57

143:                                              ; preds = %57
  %144 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %42, %20
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
