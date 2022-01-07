; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_get_permanent_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_get_permanent_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32* }

@NODE_ADDRESS_SIZE = common dso_local global i32 0, align 4
@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_hw*)* @get_permanent_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_permanent_address(%struct.atl2_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl2_hw*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %3, align 8
  %12 = load i32, i32* @NODE_ADDRESS_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %17 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @is_valid_ether_addr(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

22:                                               ; preds = %1
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %26 = call i32 @atl2_check_eeprom_exist(%struct.atl2_hw* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %91, label %28

28:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %68, %28
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 256
  %34 = call i64 @atl2_read_eeprom(%struct.atl2_hw* %31, i32 %33, i32* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %49 = add nsw i64 %48, 4
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %43
  store i32 0, i32* %10, align 4
  br label %66

56:                                               ; preds = %36
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 90
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 16
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %7, align 8
  br label %65

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %55
  br label %68

67:                                               ; preds = %30
  br label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %5, align 4
  br label %29

71:                                               ; preds = %67, %64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @LONGSWAP(i32 %73)
  %75 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %77 = bitcast i32* %76 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i64 @SHORTSWAP(i64 %78)
  %80 = getelementptr inbounds i32, i32* %15, i64 0
  %81 = bitcast i32* %80 to i64*
  store i64 %79, i64* %81, align 16
  %82 = call i64 @is_valid_ether_addr(i32* %15)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %86 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @NODE_ADDRESS_SIZE, align 4
  %89 = call i32 @memcpy(i32* %87, i32* %15, i32 %88)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

90:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

91:                                               ; preds = %22
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %93, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %133, %91
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 126976
  %99 = call i64 @atl2_spi_read(%struct.atl2_hw* %96, i32 %98, i32* %6)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %109, i32* %110, align 4
  br label %120

111:                                              ; preds = %104
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %114 = add nsw i64 %113, 4
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %108
  store i32 0, i32* %10, align 4
  br label %131

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 90
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  store i32 1, i32* %10, align 4
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 16
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %7, align 8
  br label %130

129:                                              ; preds = %121
  br label %136

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %120
  br label %133

132:                                              ; preds = %95
  br label %136

133:                                              ; preds = %131
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 4
  store i32 %135, i32* %5, align 4
  br label %94

136:                                              ; preds = %132, %129
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @LONGSWAP(i32 %138)
  %140 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %142 = bitcast i32* %141 to i64*
  %143 = load i64, i64* %142, align 4
  %144 = call i64 @SHORTSWAP(i64 %143)
  %145 = getelementptr inbounds i32, i32* %15, i64 0
  %146 = bitcast i32* %145 to i64*
  store i64 %144, i64* %146, align 16
  %147 = call i64 @is_valid_ether_addr(i32* %15)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %136
  %150 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %151 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @NODE_ADDRESS_SIZE, align 4
  %154 = call i32 @memcpy(i32* %152, i32* %15, i32 %153)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

155:                                              ; preds = %136
  %156 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %157 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %158 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %156, i64 %157)
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %158, i32* %159, align 4
  %160 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %161 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %162 = add nsw i64 %161, 4
  %163 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %160, i64 %162)
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @LONGSWAP(i32 %166)
  %168 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %167, i32* %168, align 8
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %170 = bitcast i32* %169 to i64*
  %171 = load i64, i64* %170, align 4
  %172 = call i64 @SHORTSWAP(i64 %171)
  %173 = getelementptr inbounds i32, i32* %15, i64 0
  %174 = bitcast i32* %173 to i64*
  store i64 %172, i64* %174, align 16
  %175 = call i64 @is_valid_ether_addr(i32* %15)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %155
  %178 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %179 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @NODE_ADDRESS_SIZE, align 4
  %182 = call i32 @memcpy(i32* %180, i32* %15, i32 %181)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

183:                                              ; preds = %155
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %184

184:                                              ; preds = %183, %177, %149, %90, %84, %21
  %185 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_valid_ether_addr(i32*) #2

declare dso_local i32 @atl2_check_eeprom_exist(%struct.atl2_hw*) #2

declare dso_local i64 @atl2_read_eeprom(%struct.atl2_hw*, i32, i32*) #2

declare dso_local i32 @LONGSWAP(i32) #2

declare dso_local i64 @SHORTSWAP(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @atl2_spi_read(%struct.atl2_hw*, i32, i32*) #2

declare dso_local i32 @ATL2_READ_REG(%struct.atl2_hw*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
