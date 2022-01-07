; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw_bind_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw_bind_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: ERROR0 IN SCRIPT at %d.\0A\00", align 1
@SCR_DATA_ZERO = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_SCRIPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%d:  <%x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: ERROR1 IN SCRIPT at %d.\0A\00", align 1
@SCR_NO_FLUSH = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@FE_WIDE = common dso_local global i32 0, align 4
@OPC_MOVE = common dso_local global i32 0, align 4
@RELOC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"sym_fw_bind_script: weird relocation %x\0A\00", align 1
@OPC_TCHMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_fw_bind_script(%struct.sym_hcb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %12, align 8
  br label %21

21:                                               ; preds = %228, %158, %47, %30, %3
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %229

25:                                               ; preds = %21
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %32 = call i8* @sym_name(%struct.sym_hcb* %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %39)
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %13, align 8
  br label %21

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SCR_DATA_ZERO, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  store i32 0, i32* %48, align 4
  br label %21

50:                                               ; preds = %43
  %51 = load i32, i32* @DEBUG_FLAGS, align 4
  %52 = load i32, i32* @DEBUG_SCRIPT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %50
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 28
  switch i32 %67, label %149 [
    i32 15, label %68
    i32 14, label %69
    i32 12, label %70
    i32 0, label %111
    i32 1, label %123
    i32 8, label %135
    i32 4, label %148
    i32 5, label %148
    i32 6, label %148
    i32 7, label %148
  ]

68:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %150

69:                                               ; preds = %65
  store i32 1, i32* %14, align 4
  br label %150

70:                                               ; preds = %65
  store i32 2, i32* %14, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = xor i32 %77, %78
  %80 = and i32 %79, 3
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %84 = call i8* @sym_name(%struct.sym_hcb* %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %84, i32 %91)
  br label %93

93:                                               ; preds = %82, %70
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SCR_NO_FLUSH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %100 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @FE_PFEN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SCR_NO_FLUSH, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %98, %93
  br label %150

111:                                              ; preds = %65
  %112 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %113 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FE_WIDE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @OPC_MOVE, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %111
  store i32 1, i32* %14, align 4
  br label %150

123:                                              ; preds = %65
  %124 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %125 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FE_WIDE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @OPC_MOVE, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %123
  store i32 0, i32* %14, align 4
  br label %150

135:                                              ; preds = %65
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 8388608
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, -130023424
  %143 = icmp eq i32 %142, -2143289344
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 2, i32* %14, align 4
  br label %146

145:                                              ; preds = %140
  store i32 1, i32* %14, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %147

147:                                              ; preds = %146, %139
  br label %150

148:                                              ; preds = %65, %65, %65, %65
  store i32 1, i32* %14, align 4
  br label %150

149:                                              ; preds = %65
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %149, %148, %147, %134, %122, %110, %69, %68
  %151 = load i32, i32* %7, align 4
  %152 = call i8* @cpu_to_scr(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %13, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @cpu_to_scr(i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %13, align 8
  br label %21

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %222, %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %14, align 4
  %170 = icmp ne i32 %168, 0
  br i1 %170, label %171, label %228

171:                                              ; preds = %167
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @RELOC_MASK, align 4
  %176 = and i32 %174, %175
  switch i32 %176, label %219 [
    i32 129, label %177
    i32 131, label %186
    i32 130, label %195
    i32 128, label %204
    i32 0, label %213
  ]

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @RELOC_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %183 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  store i32 %185, i32* %8, align 4
  br label %222

186:                                              ; preds = %171
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @RELOC_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %192 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %190, %193
  store i32 %194, i32* %8, align 4
  br label %222

195:                                              ; preds = %171
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @RELOC_MASK, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %196, %198
  %200 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %201 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %199, %202
  store i32 %203, i32* %8, align 4
  br label %222

204:                                              ; preds = %171
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @RELOC_MASK, align 4
  %207 = xor i32 %206, -1
  %208 = and i32 %205, %207
  %209 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %210 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  store i32 %212, i32* %8, align 4
  br label %222

213:                                              ; preds = %171
  %214 = load i32, i32* %9, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %8, align 4
  br label %222

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %171, %218
  store i32 0, i32* %8, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %219, %216, %204, %195, %186, %177
  %223 = load i32, i32* %8, align 4
  %224 = call i8* @cpu_to_scr(i32 %223)
  %225 = ptrtoint i8* %224 to i32
  %226 = load i32*, i32** %13, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %13, align 8
  store i32 %225, i32* %226, align 4
  br label %167

228:                                              ; preds = %167
  br label %21

229:                                              ; preds = %21
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
