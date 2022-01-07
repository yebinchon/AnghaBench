; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_nvram_write_block_unbuffered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_nvram_write_block_unbuffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVRAM_CMD_WREN = common dso_local global i32 0, align 4
@NVRAM_CMD_GO = common dso_local global i32 0, align 4
@NVRAM_CMD_DONE = common dso_local global i32 0, align 4
@NVRAM_ADDR = common dso_local global i32 0, align 4
@NVRAM_CMD_WR = common dso_local global i32 0, align 4
@NVRAM_CMD_FIRST = common dso_local global i32 0, align 4
@NVRAM_CMD_LAST = common dso_local global i32 0, align 4
@NVRAM_CMD_ERASE = common dso_local global i32 0, align 4
@NVRAM_WRDATA = common dso_local global i32 0, align 4
@NVRAM_CMD_WRDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32, i32*)* @tg3_nvram_write_block_unbuffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_nvram_write_block_unbuffered(%struct.tg3* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.tg3*, %struct.tg3** %6, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %205

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %192, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %193

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %12, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %60, %37
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.tg3*, %struct.tg3** %6, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @tg3_nvram_read_be32(%struct.tg3* %47, i32 %50, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %63

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %15, align 4
  br label %42

63:                                               ; preds = %58, %42
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %193

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %75, %67
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @memcpy(i32* %84, i32* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %17, align 4
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.tg3*, %struct.tg3** %6, align 8
  %94 = call i32 @tg3_enable_nvram_access(%struct.tg3* %93)
  %95 = load i32, i32* @NVRAM_CMD_WREN, align 4
  %96 = load i32, i32* @NVRAM_CMD_GO, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @NVRAM_CMD_DONE, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.tg3*, %struct.tg3** %6, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @tg3_nvram_exec_cmd(%struct.tg3* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %77
  br label %193

105:                                              ; preds = %77
  %106 = load i32, i32* @NVRAM_ADDR, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @tw32(i32 %106, i32 %107)
  %109 = load i32, i32* @NVRAM_CMD_GO, align 4
  %110 = load i32, i32* @NVRAM_CMD_DONE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NVRAM_CMD_WR, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @NVRAM_CMD_FIRST, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @NVRAM_CMD_LAST, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @NVRAM_CMD_ERASE, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %13, align 4
  %120 = load %struct.tg3*, %struct.tg3** %6, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @tg3_nvram_exec_cmd(%struct.tg3* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %193

125:                                              ; preds = %105
  %126 = load i32, i32* @NVRAM_CMD_WREN, align 4
  %127 = load i32, i32* @NVRAM_CMD_GO, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @NVRAM_CMD_DONE, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load %struct.tg3*, %struct.tg3** %6, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @tg3_nvram_exec_cmd(%struct.tg3* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %193

136:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %185, %136
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %188

141:                                              ; preds = %137
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* @NVRAM_WRDATA, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @be32_to_cpu(i32 %148)
  %150 = call i32 @tw32(i32 %147, i32 %149)
  %151 = load i32, i32* @NVRAM_ADDR, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @tw32(i32 %151, i32 %154)
  %156 = load i32, i32* @NVRAM_CMD_GO, align 4
  %157 = load i32, i32* @NVRAM_CMD_DONE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @NVRAM_CMD_WR, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %141
  %164 = load i32, i32* @NVRAM_CMD_FIRST, align 4
  %165 = load i32, i32* %13, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %13, align 4
  br label %177

167:                                              ; preds = %141
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 4
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @NVRAM_CMD_LAST, align 4
  %174 = load i32, i32* %13, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %172, %167
  br label %177

177:                                              ; preds = %176, %163
  %178 = load %struct.tg3*, %struct.tg3** %6, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @tg3_nvram_exec_cmd(%struct.tg3* %178, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %188

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 4
  store i32 %187, i32* %15, align 4
  br label %137

188:                                              ; preds = %183, %137
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %193

192:                                              ; preds = %188
  br label %34

193:                                              ; preds = %191, %135, %124, %104, %66, %34
  %194 = load i32, i32* @NVRAM_CMD_WRDI, align 4
  %195 = load i32, i32* @NVRAM_CMD_GO, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @NVRAM_CMD_DONE, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %13, align 4
  %199 = load %struct.tg3*, %struct.tg3** %6, align 8
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @tg3_nvram_exec_cmd(%struct.tg3* %199, i32 %200)
  %202 = load i32*, i32** %14, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %193, %30
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @tg3_nvram_read_be32(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tg3_enable_nvram_access(%struct.tg3*) #1

declare dso_local i32 @tg3_nvram_exec_cmd(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
