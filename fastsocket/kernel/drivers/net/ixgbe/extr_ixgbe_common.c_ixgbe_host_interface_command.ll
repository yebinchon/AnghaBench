; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_hic_hdr = type { i64 }

@IXGBE_HI_MAX_BLOCK_BYTE_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Buffer length failure.\0A\00", align 1
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i32 0, align 4
@IXGBE_HICR = common dso_local global i32 0, align 4
@IXGBE_HICR_EN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"IXGBE_HOST_EN bit disabled.\0A\00", align 1
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@IXGBE_HICR_C = common dso_local global i64 0, align 8
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_HICR_SV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Command has failed with no status valid.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Buffer not large enough for reply message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64*, i64)* @ixgbe_host_interface_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_host_interface_command(%struct.ixgbe_hw* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 8, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, 3
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IXGBE_HI_MAX_BLOCK_BYTE_LENGTH, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %16, %3
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = call i32 @hw_dbg(%struct.ixgbe_hw* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %27, i32* %13, align 4
  br label %164

28:                                               ; preds = %20
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = load i32, i32* @IXGBE_HICR, align 4
  %31 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @IXGBE_HICR_EN, align 8
  %34 = and i64 %32, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = call i32 @hw_dbg(%struct.ixgbe_hw* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %39, i32* %13, align 4
  br label %164

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = ashr i64 %41, 2
  store i64 %42, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %57, %40
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @cpu_to_le32(i64 %54)
  %56 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %48, i32 %49, i64 %50, i32 %55)
  br label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = load i32, i32* @IXGBE_HICR, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @IXGBE_HICR_C, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i32 %62, i64 %65)
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %82, %60
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @IXGBE_HI_COMMAND_TIMEOUT, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = load i32, i32* @IXGBE_HICR, align 4
  %74 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %72, i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @IXGBE_HICR_C, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  %81 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %67

85:                                               ; preds = %79, %67
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @IXGBE_HI_COMMAND_TIMEOUT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %91 = load i32, i32* @IXGBE_HICR, align 4
  %92 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %90, i32 %91)
  %93 = load i64, i64* @IXGBE_HICR_SV, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89, %85
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %98 = call i32 @hw_dbg(%struct.ixgbe_hw* %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %99, i32* %13, align 4
  br label %164

100:                                              ; preds = %89
  %101 = load i64, i64* %10, align 8
  %102 = ashr i64 %101, 2
  store i64 %102, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %119, %100
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %108, i32 %109, i64 %110)
  %112 = load i64*, i64** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %111, i64* %114, align 8
  %115 = load i64*, i64** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = call i32 @le32_to_cpus(i64* %117)
  br label %119

119:                                              ; preds = %107
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %103

122:                                              ; preds = %103
  %123 = load i64*, i64** %5, align 8
  %124 = bitcast i64* %123 to %struct.ixgbe_hic_hdr*
  %125 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %11, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %164

130:                                              ; preds = %122
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %132, %133
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %138 = call i32 @hw_dbg(%struct.ixgbe_hw* %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %139, i32* %13, align 4
  br label %164

140:                                              ; preds = %130
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %141, 3
  %143 = ashr i64 %142, 2
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %160, %140
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp sle i64 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %150 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %151 = load i64, i64* %9, align 8
  %152 = call i64 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %149, i32 %150, i64 %151)
  %153 = load i64*, i64** %5, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 %152, i64* %155, align 8
  %156 = load i64*, i64** %5, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = call i32 @le32_to_cpus(i64* %158)
  br label %160

160:                                              ; preds = %148
  %161 = load i64, i64* %9, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %9, align 8
  br label %144

163:                                              ; preds = %144
  br label %164

164:                                              ; preds = %163, %136, %129, %96, %36, %24
  %165 = load i32, i32* %13, align 4
  ret i32 %165
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @le32_to_cpus(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
