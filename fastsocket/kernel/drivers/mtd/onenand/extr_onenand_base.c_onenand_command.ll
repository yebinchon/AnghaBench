; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32, i32, i64, i32 (i32, i64)* }

@ONENAND_REG_START_ADDRESS2 = common dso_local global i64 0, align 8
@ONENAND_REG_START_ADDRESS1 = common dso_local global i64 0, align 8
@ONENAND_CMD_PROG = common dso_local global i32 0, align 4
@ONENAND_CMD_2X_PROG = common dso_local global i32 0, align 4
@ONENAND_REG_START_ADDRESS8 = common dso_local global i64 0, align 8
@ONENAND_REG_START_BUFFER = common dso_local global i64 0, align 8
@ONENAND_INT_CLEAR = common dso_local global i32 0, align 4
@ONENAND_REG_INTERRUPT = common dso_local global i64 0, align 8
@ONENAND_REG_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32, i64)* @onenand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_command(%struct.mtd_info* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.onenand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.onenand_chip*, %struct.onenand_chip** %18, align 8
  store %struct.onenand_chip* %19, %struct.onenand_chip** %10, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %38 [
    i32 129, label %21
    i32 134, label %21
    i32 133, label %21
    i32 128, label %21
    i32 139, label %22
    i32 135, label %28
    i32 136, label %28
    i32 132, label %28
    i32 138, label %32
  ]

21:                                               ; preds = %4, %4, %4, %4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %75

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %25 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %75

28:                                               ; preds = %4, %4, %4
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @onenand_block(%struct.onenand_chip* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %75

32:                                               ; preds = %4
  store i32 131, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %75

38:                                               ; preds = %4
  %39 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @onenand_block(%struct.onenand_chip* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @onenand_addr(%struct.onenand_chip* %43, i32 %44)
  %46 = sub nsw i32 %42, %45
  %47 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %48 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %52 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, -2
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %59 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %66, %38
  %70 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %71 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %69, %32, %28, %22, %21
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 136
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @onenand_bufferram_address(%struct.onenand_chip* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %83 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %82, i32 0, i32 5
  %84 = load i32 (i32, i64)*, i32 (i32, i64)** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %87 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ONENAND_REG_START_ADDRESS2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 %84(i32 %85, i64 %90)
  %92 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %93 = call i64 @ONENAND_IS_MLC(%struct.onenand_chip* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %78
  %96 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %97 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %78
  %100 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %101 = call i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip* %100)
  br label %105

102:                                              ; preds = %95
  %103 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %104 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %103)
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %5, align 4
  br label %214

106:                                              ; preds = %75
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @onenand_block_address(%struct.onenand_chip* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %114 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %113, i32 0, i32 5
  %115 = load i32 (i32, i64)*, i32 (i32, i64)** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %118 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ONENAND_REG_START_ADDRESS1, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 %115(i32 %116, i64 %121)
  %123 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @onenand_bufferram_address(%struct.onenand_chip* %123, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %127 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %126, i32 0, i32 5
  %128 = load i32 (i32, i64)*, i32 (i32, i64)** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %131 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ONENAND_REG_START_ADDRESS2, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 %128(i32 %129, i64 %134)
  br label %136

136:                                              ; preds = %109, %106
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %193

139:                                              ; preds = %136
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %140 = load i32, i32* %7, align 4
  switch i32 %140, label %152 [
    i32 137, label %141
    i32 131, label %141
    i32 130, label %141
  ]

141:                                              ; preds = %139, %139, %139
  %142 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %143 = call i64 @ONENAND_IS_MLC(%struct.onenand_chip* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %147 = call i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip* %146)
  store i32 %147, i32* %16, align 4
  br label %151

148:                                              ; preds = %141
  %149 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %150 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %148, %145
  br label %165

152:                                              ; preds = %139
  %153 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %154 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ONENAND_CMD_PROG, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @ONENAND_CMD_2X_PROG, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %160, %156, %152
  %163 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %164 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %163)
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %162, %151
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @onenand_page_address(i32 %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %170 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %169, i32 0, i32 5
  %171 = load i32 (i32, i64)*, i32 (i32, i64)** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %174 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ONENAND_REG_START_ADDRESS8, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 %171(i32 %172, i64 %177)
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @onenand_buffer_address(i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %184 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %183, i32 0, i32 5
  %185 = load i32 (i32, i64)*, i32 (i32, i64)** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %188 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ONENAND_REG_START_BUFFER, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 %185(i32 %186, i64 %191)
  br label %193

193:                                              ; preds = %165, %136
  %194 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %195 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %194, i32 0, i32 5
  %196 = load i32 (i32, i64)*, i32 (i32, i64)** %195, align 8
  %197 = load i32, i32* @ONENAND_INT_CLEAR, align 4
  %198 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %199 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @ONENAND_REG_INTERRUPT, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 %196(i32 %197, i64 %202)
  %204 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %205 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %204, i32 0, i32 5
  %206 = load i32 (i32, i64)*, i32 (i32, i64)** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %209 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @ONENAND_REG_COMMAND, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 %206(i32 %207, i64 %212)
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %193, %105
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @onenand_block(%struct.onenand_chip*, i32) #1

declare dso_local i32 @onenand_addr(%struct.onenand_chip*, i32) #1

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_bufferram_address(%struct.onenand_chip*, i32) #1

declare dso_local i64 @ONENAND_IS_MLC(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_block_address(%struct.onenand_chip*, i32) #1

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_page_address(i32, i32) #1

declare dso_local i32 @onenand_buffer_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
