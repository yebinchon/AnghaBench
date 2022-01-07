; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_eeprom_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_eeprom_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@XFRAME_I_DEVICE = common dso_local global i64 0, align 8
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"%s: eeprom test error at offset 0x4F0. Data written %llx Data read %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"%s: eeprom test error at offset 0x7F0. Data written %llx Data read %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, i32*)* @s2io_eeprom_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_eeprom_test(%struct.s2io_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %13 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %11, align 8
  %15 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %16 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XFRAME_I_DEVICE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %22 = call i32 @write_eeprom(%struct.s2io_nic* %21, i32 0, i32 0, i32 3)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %28 = call i64 @read_eeprom(%struct.s2io_nic* %27, i32 1264, i32* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %33 = call i64 @read_eeprom(%struct.s2io_nic* %32, i32 2032, i32* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %38 = call i32 @write_eeprom(%struct.s2io_nic* %37, i32 1264, i32 74565, i32 3)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %43 = call i64 @read_eeprom(%struct.s2io_nic* %42, i32 1264, i32* %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 74565
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @ERR_DBG, align 4
  %51 = load %struct.net_device*, %struct.net_device** %11, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @DBG_PRINT(i32 %50, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %53, i64 74565, i64 %55)
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %59 = call i32 @write_eeprom(%struct.s2io_nic* %58, i32 1264, i32 16777215, i32 3)
  %60 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %61 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XFRAME_I_DEVICE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %67 = call i32 @write_eeprom(%struct.s2io_nic* %66, i32 124, i32 0, i32 3)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %73 = call i32 @write_eeprom(%struct.s2io_nic* %72, i32 2032, i32 74565, i32 3)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %78 = call i64 @read_eeprom(%struct.s2io_nic* %77, i32 2032, i32* %6)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 74565
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* @ERR_DBG, align 4
  %86 = load %struct.net_device*, %struct.net_device** %11, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @DBG_PRINT(i32 %85, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 74565, i64 %90)
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %84, %81
  %93 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %94 = call i32 @write_eeprom(%struct.s2io_nic* %93, i32 2032, i32 16777215, i32 3)
  %95 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %96 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XFRAME_I_DEVICE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %102 = call i32 @write_eeprom(%struct.s2io_nic* %101, i32 128, i32 0, i32 3)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 1, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %107 = call i32 @write_eeprom(%struct.s2io_nic* %106, i32 252, i32 0, i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %105
  %111 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %112 = call i32 @write_eeprom(%struct.s2io_nic* %111, i32 256, i32 0, i32 3)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  store i32 1, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %117 = call i32 @write_eeprom(%struct.s2io_nic* %116, i32 1260, i32 0, i32 3)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %115
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @write_eeprom(%struct.s2io_nic* %125, i32 1264, i32 %126, i32 3)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @write_eeprom(%struct.s2io_nic* %132, i32 2032, i32 %133, i32 3)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32, i32* %5, align 4
  %137 = load i32*, i32** %4, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @write_eeprom(%struct.s2io_nic*, i32, i32, i32) #1

declare dso_local i64 @read_eeprom(%struct.s2io_nic*, i32, i32*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
