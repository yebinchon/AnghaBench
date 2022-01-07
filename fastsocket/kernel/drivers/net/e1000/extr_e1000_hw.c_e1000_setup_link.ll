; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64, i32, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"e1000_setup_link\00", align 1
@E1000_FC_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@EEPROM_WORD0F_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_FC_NONE = common dso_local global i32 0, align 4
@EEPROM_WORD0F_ASM_DIR = common dso_local global i32 0, align 4
@E1000_FC_TX_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_FULL = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i64 0, align 8
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_FC_RX_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@EEPROM_WORD0F_SWPDIO_EXT = common dso_local global i32 0, align 4
@SWDPIO__EXT_SHIFT = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", align 1
@FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@FCTTV = common dso_local global i32 0, align 4
@FCRTL = common dso_local global i32 0, align 4
@FCRTH = common dso_local global i32 0, align 4
@E1000_FCRTL_XONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_setup_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @E1000_FC_DEFAULT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @EEPROM_INIT_CONTROL2_REG, align 4
  %16 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %14, i32 %15, i32 1, i32* %6)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %185

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EEPROM_WORD0F_PAUSE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @E1000_FC_NONE, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %47

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @EEPROM_WORD0F_PAUSE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @EEPROM_WORD0F_ASM_DIR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @E1000_FC_FULL, align 4
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e1000_82542_rev2_0, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_82543, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @E1000_FC_RX_PAUSE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %67, %61
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @e1000_82543, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %79
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = load i32, i32* @EEPROM_INIT_CONTROL2_REG, align 4
  %97 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %95, i32 %96, i32 1, i32* %6)
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %103 = sub nsw i64 0, %102
  store i64 %103, i64* %2, align 8
  br label %185

104:                                              ; preds = %94
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @EEPROM_WORD0F_SWPDIO_EXT, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @SWDPIO__EXT_SHIFT, align 4
  %109 = shl i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @CTRL_EXT, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @ew32(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %79
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @e1000_media_type_copper, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = call i64 @e1000_setup_copper_link(%struct.e1000_hw* %120)
  br label %125

122:                                              ; preds = %113
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = call i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi i64 [ %121, %119 ], [ %124, %122 ]
  store i64 %126, i64* %5, align 8
  %127 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @FCT, align 4
  %129 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %130 = call i32 @ew32(i32 %128, i32 %129)
  %131 = load i32, i32* @FCAH, align 4
  %132 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %133 = call i32 @ew32(i32 %131, i32 %132)
  %134 = load i32, i32* @FCAL, align 4
  %135 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %136 = call i32 @ew32(i32 %134, i32 %135)
  %137 = load i32, i32* @FCTTV, align 4
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ew32(i32 %137, i32 %140)
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %125
  %149 = load i32, i32* @FCRTL, align 4
  %150 = call i32 @ew32(i32 %149, i32 0)
  %151 = load i32, i32* @FCRTH, align 4
  %152 = call i32 @ew32(i32 %151, i32 0)
  br label %183

153:                                              ; preds = %125
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* @FCRTL, align 4
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @E1000_FCRTL_XONE, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @ew32(i32 %159, i32 %164)
  %166 = load i32, i32* @FCRTH, align 4
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ew32(i32 %166, i32 %169)
  br label %182

171:                                              ; preds = %153
  %172 = load i32, i32* @FCRTL, align 4
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ew32(i32 %172, i32 %175)
  %177 = load i32, i32* @FCRTH, align 4
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %179 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @ew32(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %171, %158
  br label %183

183:                                              ; preds = %182, %148
  %184 = load i64, i64* %5, align 8
  store i64 %184, i64* %2, align 8
  br label %185

185:                                              ; preds = %183, %100, %19
  %186 = load i64, i64* %2, align 8
  ret i64 %186
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_setup_copper_link(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
