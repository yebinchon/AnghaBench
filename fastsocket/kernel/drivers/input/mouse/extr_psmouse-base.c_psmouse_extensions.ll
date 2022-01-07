; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_extensions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@PSMOUSE_IMEX = common dso_local global i32 0, align 4
@PSMOUSE_LIFEBOOK = common dso_local global i32 0, align 4
@PSMOUSE_THINKPS = common dso_local global i32 0, align 4
@PSMOUSE_PS2 = common dso_local global i32 0, align 4
@PSMOUSE_SYNAPTICS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@PSMOUSE_ALPS = common dso_local global i32 0, align 4
@PSMOUSE_HGPK = common dso_local global i32 0, align 4
@PSMOUSE_ELANTECH = common dso_local global i32 0, align 4
@PSMOUSE_GENPS = common dso_local global i32 0, align 4
@PSMOUSE_PS2PP = common dso_local global i32 0, align 4
@PSMOUSE_TRACKPOINT = common dso_local global i32 0, align 4
@PSMOUSE_TOUCHKIT_PS2 = common dso_local global i32 0, align 4
@PSMOUSE_FSP = common dso_local global i32 0, align 4
@PSMOUSE_IMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @psmouse_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_extensions(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @lifebook_detect(%struct.psmouse* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PSMOUSE_IMEX, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %22 = call i64 @lifebook_init(%struct.psmouse* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @PSMOUSE_LIFEBOOK, align 4
  store i32 %25, i32* %4, align 4
  br label %227

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PSMOUSE_IMEX, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @thinking_detect(%struct.psmouse* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @PSMOUSE_THINKPS, align 4
  store i32 %38, i32* %4, align 4
  br label %227

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PSMOUSE_PS2, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @synaptics_detect(%struct.psmouse* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PSMOUSE_IMEX, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = call i64 (...) @synaptics_supported()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %60 = call i64 @synaptics_init(%struct.psmouse* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %55
  %63 = load i32, i32* @PSMOUSE_SYNAPTICS, align 4
  store i32 %63, i32* %4, align 4
  br label %227

64:                                               ; preds = %58, %52
  %65 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %48
  %67 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %68 = call i32 @synaptics_reset(%struct.psmouse* %67)
  br label %69

69:                                               ; preds = %66, %43, %39
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PSMOUSE_IMEX, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 0
  %76 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %77 = call i32 @ps2_command(i32* %75, i32* null, i32 %76)
  %78 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @alps_detect(%struct.psmouse* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %87 = call i64 @alps_init(%struct.psmouse* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %82
  %90 = load i32, i32* @PSMOUSE_ALPS, align 4
  store i32 %90, i32* %4, align 4
  br label %227

91:                                               ; preds = %85
  %92 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %73
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PSMOUSE_IMEX, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @hgpk_detect(%struct.psmouse* %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %108 = call i64 @hgpk_init(%struct.psmouse* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @PSMOUSE_HGPK, align 4
  store i32 %111, i32* %4, align 4
  br label %227

112:                                              ; preds = %106
  %113 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %98, %94
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @PSMOUSE_IMEX, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @elantech_detect(%struct.psmouse* %119, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %128 = call i64 @elantech_init(%struct.psmouse* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %123
  %131 = load i32, i32* @PSMOUSE_ELANTECH, align 4
  store i32 %131, i32* %4, align 4
  br label %227

132:                                              ; preds = %126
  %133 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %118, %114
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @PSMOUSE_IMEX, align 4
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %134
  %139 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @genius_detect(%struct.psmouse* %139, i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @PSMOUSE_GENPS, align 4
  store i32 %144, i32* %4, align 4
  br label %227

145:                                              ; preds = %138
  %146 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i64 @ps2pp_init(%struct.psmouse* %146, i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @PSMOUSE_PS2PP, align 4
  store i32 %151, i32* %4, align 4
  br label %227

152:                                              ; preds = %145
  %153 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @trackpoint_detect(%struct.psmouse* %153, i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @PSMOUSE_TRACKPOINT, align 4
  store i32 %158, i32* %4, align 4
  br label %227

159:                                              ; preds = %152
  %160 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @touchkit_ps2_detect(%struct.psmouse* %160, i32 %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @PSMOUSE_TOUCHKIT_PS2, align 4
  store i32 %165, i32* %4, align 4
  br label %227

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %134
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @PSMOUSE_IMEX, align 4
  %170 = icmp ugt i32 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %167
  %172 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @fsp_detect(%struct.psmouse* %172, i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %181 = call i64 @fsp_init(%struct.psmouse* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179, %176
  %184 = load i32, i32* @PSMOUSE_FSP, align 4
  store i32 %184, i32* %4, align 4
  br label %227

185:                                              ; preds = %179
  %186 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %185, %171
  br label %188

188:                                              ; preds = %187, %167
  %189 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %190 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %189, i32 0, i32 0
  %191 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %192 = call i32 @ps2_command(i32* %190, i32* null, i32 %191)
  %193 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %194 = call i32 @psmouse_reset(%struct.psmouse* %193)
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @PSMOUSE_IMEX, align 4
  %197 = icmp uge i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %188
  %199 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i64 @im_explorer_detect(%struct.psmouse* %199, i32 %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %204, i32* %4, align 4
  br label %227

205:                                              ; preds = %198, %188
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @PSMOUSE_IMPS, align 4
  %208 = icmp uge i32 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i64 @intellimouse_detect(%struct.psmouse* %210, i32 %211)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @PSMOUSE_IMPS, align 4
  store i32 %215, i32* %4, align 4
  br label %227

216:                                              ; preds = %209, %205
  %217 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @ps2bare_detect(%struct.psmouse* %217, i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %224 = call i32 @psmouse_reset(%struct.psmouse* %223)
  br label %225

225:                                              ; preds = %222, %216
  %226 = load i32, i32* @PSMOUSE_PS2, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %225, %214, %203, %183, %164, %157, %150, %143, %130, %110, %89, %62, %37, %24
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i64 @lifebook_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @lifebook_init(%struct.psmouse*) #1

declare dso_local i64 @thinking_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @synaptics_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @synaptics_supported(...) #1

declare dso_local i64 @synaptics_init(%struct.psmouse*) #1

declare dso_local i32 @synaptics_reset(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(i32*, i32*, i32) #1

declare dso_local i64 @alps_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_init(%struct.psmouse*) #1

declare dso_local i64 @hgpk_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @hgpk_init(%struct.psmouse*) #1

declare dso_local i64 @elantech_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @elantech_init(%struct.psmouse*) #1

declare dso_local i64 @genius_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @ps2pp_init(%struct.psmouse*, i32) #1

declare dso_local i64 @trackpoint_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @touchkit_ps2_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @fsp_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @fsp_init(%struct.psmouse*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @im_explorer_detect(%struct.psmouse*, i32) #1

declare dso_local i64 @intellimouse_detect(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2bare_detect(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
