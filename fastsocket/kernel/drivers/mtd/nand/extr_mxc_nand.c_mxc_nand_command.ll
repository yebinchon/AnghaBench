; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.nand_chip* }
%struct.nand_chip = type { %struct.mxc_nand_host* }
%struct.mxc_nand_host = type { i32, i32, i32, i64 }

@MTD_DEBUG_LEVEL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\0A\00", align 1
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @mxc_nand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_nand_command(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mxc_nand_host*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 2
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %16, align 8
  store %struct.mxc_nand_host* %17, %struct.mxc_nand_host** %10, align 8
  store i32 1, i32* %11, align 4
  %18 = load i32, i32* @MTD_DEBUG_LEVEL3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @DEBUG(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %24 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %124 [
    i32 128, label %26
    i32 133, label %31
    i32 131, label %37
    i32 129, label %49
    i32 134, label %96
    i32 136, label %123
  ]

26:                                               ; preds = %4
  %27 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %28 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %30 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %124

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %36 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  store i32 0, i32* %11, align 4
  br label %124

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %40 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %42 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  store i32 0, i32* %11, align 4
  %43 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %44 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 133, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %37
  br label %124

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %57 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %62 = load i32, i32* %8, align 4
  call void @mxc_nand_command(%struct.mtd_info* %61, i32 133, i32 0, i32 %62)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %70 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %72 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %74 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %79 = call i32 @send_cmd(%struct.mxc_nand_host* %78, i32 131, i32 0)
  br label %80

80:                                               ; preds = %77, %63
  br label %95

81:                                               ; preds = %49
  %82 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %83 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %86 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %88 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %93 = call i32 @send_cmd(%struct.mxc_nand_host* %92, i32 133, i32 0)
  br label %94

94:                                               ; preds = %91, %81
  br label %95

95:                                               ; preds = %94, %80
  store i32 0, i32* %11, align 4
  br label %124

96:                                               ; preds = %4
  %97 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %98 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %99 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @send_prog_page(%struct.mxc_nand_host* %97, i32 0, i32 %100)
  %102 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %103 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %96
  %107 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %108 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %109 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @send_prog_page(%struct.mxc_nand_host* %107, i32 1, i32 %110)
  %112 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %113 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %114 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @send_prog_page(%struct.mxc_nand_host* %112, i32 2, i32 %115)
  %117 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %118 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %119 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @send_prog_page(%struct.mxc_nand_host* %117, i32 3, i32 %120)
  br label %122

122:                                              ; preds = %106, %96
  br label %124

123:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %4, %123, %122, %95, %48, %31, %26
  %125 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @send_cmd(%struct.mxc_nand_host* %125, i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %133, -1
  %135 = zext i1 %134 to i32
  %136 = call i32 @send_addr(%struct.mxc_nand_host* %132, i32 0, i32 %135)
  %137 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %138 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %143 = call i32 @send_addr(%struct.mxc_nand_host* %142, i32 0, i32 0)
  br label %144

144:                                              ; preds = %141, %131
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, -1
  br i1 %147, label %148, label %204

148:                                              ; preds = %145
  %149 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %150, 255
  %152 = call i32 @send_addr(%struct.mxc_nand_host* %149, i32 %151, i32 0)
  %153 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %154 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %148
  %158 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 268435456
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %164 = load i32, i32* %8, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = call i32 @send_addr(%struct.mxc_nand_host* %163, i32 %166, i32 0)
  %168 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %169 = load i32, i32* %8, align 4
  %170 = ashr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = call i32 @send_addr(%struct.mxc_nand_host* %168, i32 %171, i32 1)
  br label %179

173:                                              ; preds = %157
  %174 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %175 = load i32, i32* %8, align 4
  %176 = ashr i32 %175, 8
  %177 = and i32 %176, 255
  %178 = call i32 @send_addr(%struct.mxc_nand_host* %174, i32 %177, i32 1)
  br label %179

179:                                              ; preds = %173, %162
  br label %203

180:                                              ; preds = %148
  %181 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %182 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %183, 67108864
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %187 = load i32, i32* %8, align 4
  %188 = ashr i32 %187, 8
  %189 = and i32 %188, 255
  %190 = call i32 @send_addr(%struct.mxc_nand_host* %186, i32 %189, i32 0)
  %191 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %192 = load i32, i32* %8, align 4
  %193 = ashr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = call i32 @send_addr(%struct.mxc_nand_host* %191, i32 %194, i32 1)
  br label %202

196:                                              ; preds = %180
  %197 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = call i32 @send_addr(%struct.mxc_nand_host* %197, i32 %200, i32 1)
  br label %202

202:                                              ; preds = %196, %185
  br label %203

203:                                              ; preds = %202, %179
  br label %204

204:                                              ; preds = %203, %145
  %205 = load i32, i32* %6, align 4
  switch i32 %205, label %251 [
    i32 130, label %206
    i32 131, label %207
    i32 133, label %207
    i32 132, label %243
    i32 134, label %248
    i32 128, label %249
    i32 135, label %250
  ]

206:                                              ; preds = %204
  br label %251

207:                                              ; preds = %204, %204
  %208 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %209 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %214 = load i32, i32* @NAND_CMD_READSTART, align 4
  %215 = call i32 @send_cmd(%struct.mxc_nand_host* %213, i32 %214, i32 1)
  %216 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %217 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %218 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @send_read_page(%struct.mxc_nand_host* %216, i32 0, i32 %219)
  %221 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %222 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %223 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @send_read_page(%struct.mxc_nand_host* %221, i32 1, i32 %224)
  %226 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %227 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %228 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @send_read_page(%struct.mxc_nand_host* %226, i32 2, i32 %229)
  %231 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %232 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %233 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @send_read_page(%struct.mxc_nand_host* %231, i32 3, i32 %234)
  br label %242

236:                                              ; preds = %207
  %237 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %238 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %239 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @send_read_page(%struct.mxc_nand_host* %237, i32 0, i32 %240)
  br label %242

242:                                              ; preds = %236, %212
  br label %251

243:                                              ; preds = %204
  %244 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %245 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %247 = call i32 @send_read_id(%struct.mxc_nand_host* %246)
  br label %251

248:                                              ; preds = %204
  br label %251

249:                                              ; preds = %204
  br label %251

250:                                              ; preds = %204
  br label %251

251:                                              ; preds = %204, %250, %249, %248, %243, %242, %206
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @send_cmd(%struct.mxc_nand_host*, i32, i32) #1

declare dso_local i32 @send_prog_page(%struct.mxc_nand_host*, i32, i32) #1

declare dso_local i32 @send_addr(%struct.mxc_nand_host*, i32, i32) #1

declare dso_local i32 @send_read_page(%struct.mxc_nand_host*, i32, i32) #1

declare dso_local i32 @send_read_id(%struct.mxc_nand_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
